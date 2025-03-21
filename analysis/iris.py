from matplotlib import pyplot as plt
import plotly.express as px
from sklearn.decomposition import PCA
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
from sklearn.neighbors import KNeighborsClassifier
from ucimlrepo import fetch_ucirepo
import pandas as pd
from sklearn.model_selection import train_test_split

from analysis.gerar_grafico import gerar_hist_por_classe


# ---------------------------------------------------------------------------------------------------------------------------
# Pegando Dataset
iris = fetch_ucirepo(id=53)

X = iris.data.features

y = iris.data.targets

df_total = pd.concat([X, y], axis=1)

# ---------------------------------------------------------------------------------------------------------------------------
# Verificando necessidade de limpeza de dados

# Quantidade de dados faltantes
# print(df_total.isnull().sum())

# Quantidade de dados duplicados
# print(df_total.duplicated().sum())

# Visualizando quem são os registros duplicados
# print(df_total[df_total.duplicated()])

df_limpo = df_total.drop_duplicates()

# ---------------------------------------------------------------------------------------------------------------------------
# Encontrando medidas de tendência central do conjunto


# Obtendo as três medidas juntas
medidas = df_limpo.describe()
medidas.loc["mode"] = df_limpo.mode().iloc[0]
medidas = medidas.iloc[[1, 5, 8]]
# print(medidas)

# Obtendo as medidas separadamente:

# Média
# print(f'Média: \n{df_limpo.drop(columns=["class"]).mean()}')

# Mediana
# print(f'Mediana: \n{df_limpo.drop(columns=["class"]).median()}')

# Moda
# print(f'Moda: \n{df_limpo.mode().iloc[0]}')


# ---------------------------------------------------------------------------------------------------------------------------
# Encontrando espécies e quantidade de observações

# Conta observações de cada classe
# print(df_limpo['class'].value_counts())

# ---------------------------------------------------------------------------------------------------------------------------
# Medidas de tendência central do conjunto por espécie

# Média
# print(df_limpo.groupby("class").mean())

# Mediana
# print(df_limpo.groupby('class').median())

# Moda
# print(df_limpo.groupby('class').agg(lambda x: pd.Series.mode(x)[0]))

# ---------------------------------------------------------------------------------------------------------------------------
# Gráfico de distribuição (Histograma)

# Histograma
# df_limpo.plot(kind='hist', bins=20, edgecolor='black', subplots=True, sharex=False, layout=(2,2))


# Salva gráfico
# plt.savefig('histograma.png', bbox_inches='tight')


# Mostra gráfico
# plt.show()


# ---------------------------------------------------------------------------------------------------------------------------
# Gráfico de distribuição por espécie (Histograma)

# Para exportar o gráfico, basta passar o argumento export=True na função.

# Sepal length
# gerar_hist_por_classe(df_limpo,'sepal length', export=True)


# Sepal width
# gerar_hist_por_classe(df_limpo,'sepal width')


# Petal length
# gerar_hist_por_classe(df_limpo,'petal length')


# Petal width
# gerar_hist_por_classe(df_limpo,'petal width')


# ---------------------------------------------------------------------------------------------------------------------------
# Gráfico de correlação (Dispersão)


# Gráfico de dispersão
dispersao = px.scatter_matrix(
    df_limpo,
    dimensions=["sepal length", "sepal width", "petal length", "petal width"],
    color="class",
)

# Mostra gráfico
# dispersao.show()


# Exporta gráfico
# dispersao.write_image('grafico_dispersao.png')


# ---------------------------------------------------------------------------------------------------------------------------
# Divisão dos dados em treinamento | teste

# Previsores
X_iris = df_total.iloc[:, 0:4].values

# Classe
y_iris = df_total.iloc[:, 4].values

X_iris_treinamento, X_iris_teste, y_iris_treinamento, y_iris_teste = train_test_split(
    X_iris, y_iris, test_size=0.25, random_state=0
)


# ---------------------------------------------------------------------------------------------------------------------------
# Treinamento do modelo e métricas(KNN)

knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_iris_treinamento, y_iris_treinamento)

previsoes = knn.predict(X_iris_teste)

# print(previsoes)

# Métricas
# print(accuracy_score(y_iris_teste,previsoes))
# print(confusion_matrix(y_iris_teste, previsoes))
# print(classification_report(y_iris_teste, previsoes))

# ---------------------------------------------------------------------------------------------------------------------------
# Redução de dimensionalidade (PCA)
pca = PCA(n_components=2)
X_pca = pca.fit_transform(X_iris)

X_iris_treinamento, X_iris_teste, y_iris_treinamento, y_iris_teste = train_test_split(
    X_pca, y_iris, test_size=0.25, random_state=0
)

knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_iris_treinamento, y_iris_treinamento)

previsoes = knn.predict(X_iris_teste)

# Métricas
# print(accuracy_score(y_iris_teste,previsoes))
# print(confusion_matrix(y_iris_teste, previsoes))
# print(classification_report(y_iris_teste, previsoes))
