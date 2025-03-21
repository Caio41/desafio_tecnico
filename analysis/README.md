**O código referente à esse texto se encontra em `analysis/iris.py`. Para visualizar os resultados, é necessário descomentar as linhas.** 


## Limpeza dos dados
Inicialmente investiguei os dados para verificar a necessidade de limpeza, fiz isso procurando por registros com algum valor faltante e registros duplicados

```py
print(df_total.isnull().sum())

print(df_total.duplicated().sum())
```
Percebi que não tinha nenhum valor faltante no dataset, porém existiam 3 registros duplicados, sendo eles:

```sh
     sepal length  sepal width  petal length  petal width           class
34            4.9          3.1           1.5          0.1     Iris-setosa
37            4.9          3.1           1.5          0.1     Iris-setosa
142           5.8          2.7           5.1          1.9  Iris-virginica
```

Sendo assim, os removi usando o drop_duplicates() do pandas

```py
df_limpo = df_total.drop_duplicates()
```

## Medidas de tendência central

Tendo limpado o dataset, encontrei as medidas de tendência central da seguinte forma:

Utilizei a função `.describe()` do pandas para obter tanto a média quanto a mediana, além de outras informações importantes sobre o dataset. Guardei essas informações em uma variável `medidas`:
```py
medidas = df_limpo.describe()
```

Para adicionar a moda em `medidas`, usei:
```py
medidas.loc['mode'] = df_limpo.mode().iloc[0]
```

Por fim, removi as outras informações, mantendo apenas a média, mediana e moda:
```py
medidas = medidas.iloc[[1,5,8]]
```

e obtive:
```sh
      sepal length  sepal width  petal length  petal width
mean      5.856463     3.055782      3.780272     1.208844      (Média)
50%       5.800000     3.000000      4.400000     1.300000      (Mediana)
mode      5.000000     3.000000      1.400000     0.200000      (Moda)
```

OBS: Também é possível obter essas medidas separadamente utilizando:
```py
# Média
print(f'Média: \n{df_limpo.drop(columns=["class"]).mean()}')

# Mediana
print(f'Mediana: \n{df_limpo.drop(columns=["class"]).median()}')

# Moda
print(f'Moda: \n{df_limpo.mode().iloc[0]}')
```

Com esses números em mãos, podemos tirar algumas conclusões:

Em `sepal length` temos valores relativamente próximos na média (5.85) e mediana (5.8), indicando uma distribuição dos dados quase simétrica e sem grandes outliers. No entanto, o baixo valor da moda (5.0) indica uma concentração de valores baixos e sugere a existência de valores um pouco mais altos que ajudam a manter a média e mediana ligeiramente mais alta.

Já em `sepal widht` podemos ver valores extremamente próximos na média (3.05), mediana (3.0) e moda (3.0), o que sugere uma distribuição simétrica e sem outliers.

Por outro lado, em `petal length` vemos valores bem distantes na média (3.7), mediana (4.4) e moda (1.4), indicando uma distribuição 
assimétrica à esquerda e a possível existência de outliers. A moda relativamente baixa em comparação à mediana sugere que a maioria dos 
valores se concentra em torno de valores maiores, mas existe um pico em valores mais baixos que influenciam a distribuição.

Por fim, em `petal width` podemos perceber valores próximos na média (1.2) e mediana (1.3), sugerindo uma distribuição quase simétrica. No entanto, o valor da moda (0.2) que é significativamente menor, indica a concentração de valores muito baixos, configurando uma leve assimetria à esquerda. Além disso, por ter uma moda bem menor que os valores de média e mediana, podemos inferir que existe uma concentração de valores um pouco maiores que mantém a média e a mediana mais altas, apesar do pico em 0.2


## Espécies e suas quantidades

Para encontrar as espécies e suas quantidades eu utilizei:
```py
print(df_limpo['class'].value_counts())
```
```sh
class
Iris-versicolor    50
Iris-virginica     49
Iris-setosa        48
```
Inicialmente, tinhamos 50 registros para cada espécie, porém acabamos encontrando dois registros duplicados de Iris-setosa e um de Iris-virginica que foram removidos após a limpeza dos dados.


## Medidas de tendência central por espécie

Podemos calcular as medidas de tendência central por espécie utilizando o `.groupby()` do pandas:

```py
# Média
print(df_limpo.groupby("class").mean())
```
```sh
                 sepal length  sepal width  petal length  petal width
class
Iris-setosa          5.010417     3.431250      1.462500     0.250000
Iris-versicolor      5.936000     2.770000      4.260000     1.326000
Iris-virginica       6.604082     2.979592      5.561224     2.028571
```
```py
# Mediana
print(df_limpo.groupby('class').median())
```
```sh
                 sepal length  sepal width  petal length  petal width
class
Iris-setosa               5.0          3.4          1.50          0.2
Iris-versicolor           5.9          2.8          4.35          1.3
Iris-virginica            6.5          3.0          5.60          2.0
```
```py
# Moda
print(df_limpo.groupby('class').agg(lambda x: pd.Series.mode(x)[0]))
```
```sh
                sepal length  sepal width  petal length  petal width
class
Iris-setosa               5.0          3.4           1.4          0.2
Iris-versicolor           5.5          3.0           4.5          1.3
Iris-virginica            6.3          3.0           5.1          1.8
```

É possível tirarmos algumas conclusões sobre esses valores:
A Iris-virignica costuma ter o maior `sepal length`, evidenciado pela sua média e mediana que são maiores que todas as outras espécies, além disso, essa espécie costuma ter um `petal length` e `petal width` maior que as outras duas.

Por outro lado, a Iris-setosa costuma ter o menor `sepal length` dentre as três espécies, bem como o menor `petal length` e `petal width`. Em compensação, essa espécie é a que costuma ter o maior `sepal width`

Por fim, a Iris-versicolor se encontra no meio da duas, tendo valores medianos para `sepal length`, `petal length` e `petal width` e o menor valor médio para `sepal width`

## Gráfico de distribuição das variáveis

Nessa seção, será demonstrada a distribuição das variáveis por meio de um histograma, para fazer esse gráfico, vamos utilizar o `.plot()` do pandas, junto da biblioteca matplotlib:
```py
df_limpo.plot(kind='hist', bins=20, edgecolor='black', subplots=True, sharex=False, layout=(2,2))
plt.show()
```
![image](https://github.com/user-attachments/assets/6851b721-b354-4676-a83b-3643e8aed260)


Podemos observar aspectos interessantes sobre esses histogramas, a começar pelo histograma de `sepal length`. Nele podemos ver uma distribuição levemente assimétrica à esquerda devido ao grande pico em 5. Além disso, podemos perceber uma distribuição bem concentrada, sem grandes variações, o que sugere a ausência de outliers.

Já no histograma de `sepal width`, podemos observar uma distribuição quase simétrica, com os valores concentrados em torno de um valor médio, sugerindo uma distribuição normal. 

Por outro lado, no histograma de `petal length` percebemos uma distribuição assimétrica à esquerda, com uma grande concentração de valores em torno de 1 e 2 e outra grande concentração entre 3 e 7. 

Por fim, no histograma de `petal width` podemos observar uma distribuição ligeiramente assimétrica à esquerda devido ao pico entre 0 e 0.5. Além de possuir uma distribuição concentrada, sem valores extremos.

## Gráfico de distribuição de variáveis por espécie

Nessa seção, também será usado um histograma para cada variável por espécie. Criei uma função para gerar esse histograma:

```py
def gerar_hist_por_classe(df, atributo):
    min_value = df[atributo].min()
    max_value = df[atributo].max()
    df.hist(
        color="royalblue",
        grid=False,
        edgecolor="black",
        bins=20,
        column=atributo,
        by="class",
        range=(min_value, max_value),
    )

    plt.suptitle(f"{atributo.capitalize()} X Classe", fontsize=16)
    plt.subplots_adjust(top=0.85)
    plt.show()
```

Ao utilizar `gerar_hist_por_classe(df_limpo,'sepal length')`, obtemos:

![image](https://github.com/user-attachments/assets/fade2f19-7283-4dc2-941a-168bb7505515)


Podemos observar nessa imagem que os valores para `sepal length` da espécie Iris-setosa são bastante concentrados em valores menores (entre 4 e 5.9) com pouca variação, o que indica que essa característica é mais uniforme nas Iris-setosa. 

Já os valores para Iris-versicolor estão mais distribuídos e possuem uma variação maior, o que sugere uma maior diversidade nessa característica nessa espécie. 

Por último, os valores para `sepal length` da Iris-virginica também são relativamente bem distribuídos, se concentrando mais em valores maiores (>5.6). Contudo, podemos observar a presença de um potencial outlier isolado, com um valor menor que o comum para a espécie.

```py
gerar_hist_por_classe(df_limpo,'sepal width')
```
![image](https://github.com/user-attachments/assets/53441470-8807-4ef4-995f-6eb3449140f4)


Nessa imagem, vemos que os valores para `sepal width` da espécie Iris-setosa se concentram mais à direita, indicando que a maioria das flores dessa espécie possui `sepal width` maior. Fora isso, podemos observar a presença de um valor isolado bem menor que o comum, à esquerda, indicando um potencial outlier. 

Já no histograma da Iris-versicolor, vemos uma distribuição levemente assimétrica à esquerda, denotando valores médio-baixo para `sepal width` de flores dessa espécie. 

Por fim, na Iris-virginica podemos observar uma maior concentração no meio do gráfico, sugerindo o tamanho médio para o `sepal width` dessa espécie. Além disso, também podemos observar alguns valores distoando tanto pra cima (>3.5) quanto pra baixo(<2.5)

```py
gerar_hist_por_classe(df_limpo,'petal length')
```
![image](https://github.com/user-attachments/assets/84a3c7bf-00d4-484b-839b-35fd80a58cc5)


Nessa imagem, os histogramas estão todos bem concentrados. Vemos que na espécie Iris-setosa existe uma concentração nos valores mais baixos do gráfico, sugerindo que as flores dessa espécie costumam ter `petal length` menor. 

Por outro lado, as flores da espécie Iris-versicolor se concentram no meio do gráfico com uma distribuição um pouco maior do que as Iris-setosa. 

Já as Iris-virginica se encontram na parte mais à direita do gráfico, possuindo valores mais altos para `petal length`.

```py
gerar_hist_por_classe(df_limpo,'petal width')
```
![image](https://github.com/user-attachments/assets/d44a1080-ef24-42d4-b8bf-1d554dad209d)


Aqui podemos observar que as flores da espécie Iris-setosa possuem uma baixa distribuição em seu valor de `petal width`, estando todas concentradas em valores menores, com um pico em 0.1-0.2. Já as Iris-versicolor se encontram em torno do meio do gráfico, possuindo valores médios para `petal width`. Por último, as Iris-virginicas se encontram no topo do tamanho de `petal width`, estando concentradas em valores maiores


## Gráfico de correlação

Para demonstrar esse gráfico utilizei um gráfico de dispersão, gerado através da biblioteca Plotly:
```py
dispersao = px.scatter_matrix(
    df_limpo,
    dimensions=["sepal length", "sepal width", "petal length", "petal width"],
    color="class",
)
dispersao.show()
```
![image](https://github.com/user-attachments/assets/8b59acae-78ca-4f2b-82db-98d5eadbdc5b)


Nesse gráfico de correlação é fácil ver como os atributos `petal length` e `petal width` são muito diferentes entre as espécies. Podendo ser muito úteis na hora de classificar uma flor em alguma das espécies. Além disso, também podemos observar uma correlação positiva entre `petal length` e `petal width`, onde quando uma das medidas cresce, a outra também tende a crescer.


## Definição de espécies

Através dos gráficos e das medidas de tendência central, conseguimos identificar alguns padrões que podem ajudar na hora de identificar uma espécie. Foi observado que as variáveis `petal length` e `petal width` são bem diferente entre as espécies, podendo ser um bom ponto de partida na hora de classificar uma dessas flores. Vimos que a espécie Iris-setosa costuma ter baixos valores para essas variáveis (petal length < 2, petal width < 0.7), enquanto a Iris-versicolor possui valores médio-alto (3 < petal length < 6, 1 < petal width < 2) e a Iris-virginica valores mais altos (petal length > 4.8, petal width > 1.4). 

Outro atributo interessante que pode ajudar a identificar as espécies é o `sepal width`, onde a Iris-setosa apresenta os maiores valores em comparação com as outras espécies, estando concentrados no intervalo de 2.9 - 4.4. Já as Iris-versicolor apresentam valores médio-baixo, na faixa de 2 - 3.4. Por fim, as Iris-virginicas possuem valores mais amplamente distribuidos para essa variável, se concentrando entre 2.2 - 3.8. 

Além disso, analisando a variável `sepal length` podemos observar que a Iris-virginica se destaca por apresentar valores maiores, possuindo observações com valores acima de 7, podendo ser um bom critério para diferenciá-la das outras espécies. Por outro lado, a Iris-setosa tende a possuir valores menores para essa variável, com a maioria concentrada no intervalo 4.3 - 5.5.

Tendo discutido esses pontos, podemos resumir as características das diferentes flores da seguinte forma:

Iris-setosa -> BAIXO `sepal length`, ALTO `sepal width`, BAIXO `petal length`, BAIXO `petal width`

Iris-versicolor -> MÉDIO-BAIXO `sepal length`, MÉDIO-BAIXO `sepal width`, MÉDIO `petal length`, MÉDIO `petal width

Iris-virginica -> ALTO `sepal length`, MÉDIO `sepal width`, ALTO `petal length`, ALTO `petal width`


|                | Sepal Length | Sepal Width | Petal Length | Petal Width |
|----------------|--------------|-------------|--------------|-------------|
| Iris-setosa    | BAIXO        | ALTO        | BAIXO        | BAIXO       |
| Iris-versicolor| MÉDIO-BAIXO  | MÉDIO-BAIXO | MÉDIO        | MÉDIO       |
| Iris-virginica | ALTO         | MÉDIO       | ALTO         | ALTO        |


## Divisão em conjunto de treinamento e conjunto de teste

Como eu tinha anteriormente juntado as features e as classes em um único DataFrame, vou separá-los aqui usando:

```py
# Previsores
X_iris = df_total.iloc[:, 0:4].values

# Classe
y_iris = df_total.iloc[:, 4].values
```

Dessa forma, em `X_iris` temos os valores das colunas `sepal length`, `sepal width`, `petal length` e `petal width`, enquanto que em `y_iris` temos os valores de `class`.

Para fazer a divisão dos conjuntos em treinamento e teste usei a função `train_test_split()` da biblioteca scikit-learn:

```py
X_iris_treinamento, X_iris_teste, y_iris_treinamento, y_iris_teste = train_test_split(
    X_iris, y_iris, test_size=0.25, random_state=0
)
```

Decidi usar apenas 25% dos registros como teste devido a baixa quantidade total deles (150 ao todo), totalizando 112 registros de treinamento e 38 registros de teste.


## Treinamento do modelo e métricas

Escolhi utilizar o algoritmo KNN para construir o modelo devido ao número pequeno de registros.
```py
knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_iris_treinamento, y_iris_treinamento)

previsoes = knn.predict(X_iris_teste)
```
Podemos obter as métricas de acurácia, precisão e recall utilizando:

```py
print(accuracy_score(y_iris_teste,previsoes))
print(classification_report(y_iris_teste, previsoes))
```
```sh
                    precision    recall  f1-score   support

    Iris-setosa       1.00      1.00      1.00        13
Iris-versicolor       1.00      0.94      0.97        16
 Iris-virginica       0.90      1.00      0.95         9
```
Observamos uma acurácia de 97.3% com valores de precisão perfeitos para Iris-setosa e Iris-versicolor e valores de recall perfeitos para Iris-setosa e Iris-virgnica

Além disso, podemos observar onde foi que o modelo mais errou através da sua matriz de confusão:
```py
print(confusion_matrix(y_iris_teste, previsoes))
```
```sh
    [13  0  0]
    [ 0 15  1]
    [ 0  0  9]
```
Nela podemos ver que só tivemos um registro classificado de maneira errada, sendo ele uma Iris-versicolor que foi classificado como Iris-virginica.

Testei alguns valores diferentes para o número de vizinhos, como 3, 7 e 9, mas como todos geraram resultados iguais, mantive o valor padrão 5.

## Redução de dimensionalidade

Utilizei a técnica PCA para fazer essa redução:

```py
pca = PCA(n_components=2)
X_pca = pca.fit_transform(X_iris)

X_iris_treinamento, X_iris_teste, y_iris_treinamento, y_iris_teste = train_test_split(
    X_pca, y_iris, test_size=0.25, random_state=0
)

knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_iris_treinamento, y_iris_treinamento)

previsoes = knn.predict(X_iris_teste)
```

Podemos visualizar as métricas novamente utilizando:
```py
print(accuracy_score(y_iris_teste,previsoes))
print(confusion_matrix(y_iris_teste, previsoes))
print(classification_report(y_iris_teste, previsoes))
```
Ao fazer isso, obtemos valores iguais aos vistos anteriormente.
Modificando o valor de n_components no PCA para 3 ou 4, os resultados permanecem os mesmos, porém utilizando `num_components=1` acabamos tendo uma pior precisão do modelo.
Acredito que o pequeno número de atributos (4) presentes no dataset Iris faz com que a redução de dimensionalidade não seja muito eficaz, pois a maior parte da informação já está bem representada nas dimensões originais.

