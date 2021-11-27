library(ggplot2)

setwd('/home/jonas/Desktop/round_2/')

plot_graph <- function (xlab, ylab, x, y, filename) {
    png(file=filename, width=990, height=819)
    par(mar=c(9,10,2,2)+0.1)
    plot(
        x=x,
        y=y,
        xlab='',
        ylab='',
        cex.axis=5
    )
    title(ylab=ylab, line=7, cex.lab=5)
    title(xlab=xlab, line=7, cex.lab=5)
    dev.off()
}

######### LPA
metrics_file <- 'jonas_si_gml_lpa/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    filename='images/lpa_modularidade_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    filename='images/lpa_modularidade_dupla.png'
)
# Coverage
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    filename='images/lpa_cobertura_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    filename='images/lpa_cobertura_dupla.png'
)
# Performance
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    filename='images/lpa_performance_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    filename='images/lpa_performance_dupla.png'
)



############# Greedy Modularity Optimization
metrics_file <- 'jonas_si_gml_greedy_modularity/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    filename='images/gmo_modularidade_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    filename='images/gmo_modularidade_dupla.png'
)
# Coverage
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    filename='images/gmo_cobertura_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    filename='images/gmo_cobertura_dupla.png'
)
# Performance
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    filename='images/gmo_performance_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    filename='images/gmo_performance_dupla.png'
)




############# Fluid Communities k=2
metrics_file <- 'jonas_si_gml_fluid_communities_k_2/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    filename='images/fc2_modularidade_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    filename='images/fc2_modularidade_dupla.png'
)
# Coverage
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    filename='images/fc2_cobertura_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    filename='images/fc2_cobertura_dupla.png'
)
# Performance
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    filename='images/fc2_performance_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    filename='images/fc2_performance_dupla.png'
)




############# Fluid Communities k=3
metrics_file <- 'jonas_si_gml_fluid_communities_k_3/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    filename='images/fc3_modularidade_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    filename='images/fc3_modularidade_dupla.png'
)
# Coverage
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    filename='images/fc3_cobertura_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    filename='images/fc3_cobertura_dupla.png'
)
# Performance
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    filename='images/fc3_performance_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    filename='images/fc3_performance_dupla.png'
)




############# Fluid Communities k=4
metrics_file <- 'jonas_si_gml_fluid_communities_k_4/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    filename='images/fc4_modularidade_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    filename='images/fc4_modularidade_dupla.png'
)
# Coverage
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    filename='images/fc4_cobertura_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    filename='images/fc4_cobertura_dupla.png'
)
# Performance
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    filename='images/fc4_performance_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    filename='images/fc4_performance_dupla.png'
)





############# Fluid Communities k=5
metrics_file <- 'jonas_si_gml_fluid_communities_k_5/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    filename='images/fc5_modularidade_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    filename='images/fc5_modularidade_dupla.png'
)
# Coverage
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    filename='images/fc5_cobertura_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    filename='images/fc5_cobertura_dupla.png'
)
# Performance
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    filename='images/fc5_performance_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    filename='images/fc5_performance_dupla.png'
)




############# Fluid Communities k=6
metrics_file <- 'jonas_si_gml_fluid_communities_k_6/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    filename='images/fc6_modularidade_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    filename='images/fc6_modularidade_dupla.png'
)
# Coverage
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    filename='images/fc6_cobertura_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    filename='images/fc6_cobertura_dupla.png'
)
# Performance
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    filename='images/fc6_performance_simples.png'
)
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    filename='images/fc6_performance_dupla.png'
)

