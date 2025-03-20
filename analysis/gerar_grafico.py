from matplotlib import pyplot as plt


def gerar_hist_por_classe(df, atributo, export=False):
    '''Gera histograma de atributo x classe, é possível exportar o gráfico gerado
       passando o argumento export=True.
    '''
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
    if export:
        plt.savefig(f'histograma_{atributo.replace(" ", "_")}_x_classe')
    plt.show()
