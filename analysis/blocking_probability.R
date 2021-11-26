setwd('/home/jonas/Desktop/round_3/')

plot_graph <- function (xlab, ylab, x, y, filename) {
    png(file=filename, width=990, height=819)
    par(mar=c(7,7,2,2)+0.1)
    plot(
        x=x,
        y=y,
        xlab='',
        ylab='',
        cex.axis=3
    )
    title(ylab=ylab, line=5, cex.lab=3)
    title(xlab=xlab, line=5, cex.lab=3)
    dev.off()
}

######### LPA
metrics_file <- 'jonas_si_gml_lpa/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    filename='images/lpa_modularidade_bp.png'
)
# Coverage
plot_graph(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    filename='images/lpa_coverage_bp.png'
)
# Performance
plot_graph(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    filename='images/lpa_performance_bp.png'
)


############# Greedy Modularity Optimization
metrics_file <- 'jonas_si_gml_greedy_modularity/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    filename='images/gmo_modularidade_bp.png'
)
# Coverage
plot_graph(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    filename='images/gmo_coverage_bp.png'
)
# Performance
plot_graph(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    filename='images/gmo_performance_bp.png'
)
#Dispersion Lines
png(file='images/gmo_modularidade_bp_dispersion_lines.png', width=990, height=819)
par(mar=c(6,6,2,2)+0.1)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='',
    ylab='',
    cex.axis=2.2
)
title(ylab='Modularidade', line=4, cex.lab=2.3)
title(xlab='Probabilidade de Bloqueio', line=4, cex.lab=2.3)
lines(c(0.03,0.58), c(0.1,0.45), type='l', lwd=4, col='firebrick1')
lines(c(0.015,0.5), c(0.13,0.59), type='l', lwd=4, col='firebrick1')
dev.off()



############# Fluid Communities k=2
metrics_file <- 'jonas_si_gml_fluid_communities_k_2/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    filename='images/fc2_modularidade_bp.png'
)
# Coverage
plot_graph(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    filename='images/fc2_coverage_bp.png'
)
# Performance
plot_graph(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    filename='images/fc2_performance_bp.png'
)




############# Fluid Communities k=3
metrics_file <- 'jonas_si_gml_fluid_communities_k_3/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    filename='images/fc3_modularidade_bp.png'
)
# Coverage
plot_graph(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    filename='images/fc3_coverage_bp.png'
)
# Performance
plot_graph(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    filename='images/fc3_performance_bp.png'
)




############# Fluid Communities k=4
metrics_file <- 'jonas_si_gml_fluid_communities_k_4/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    filename='images/fc4_modularidade_bp.png'
)
# Coverage
plot_graph(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    filename='images/fc4_coverage_bp.png'
)
# Performance
plot_graph(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    filename='images/fc4_performance_bp.png'
)




############# Fluid Communities k=5
metrics_file <- 'jonas_si_gml_fluid_communities_k_5/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    filename='images/fc5_modularidade_bp.png'
)
# Coverage
plot_graph(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    filename='images/fc5_coverage_bp.png'
)
# Performance
plot_graph(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    filename='images/fc5_performance_bp.png'
)



############# Fluid Communities k=6
metrics_file <- 'jonas_si_gml_fluid_communities_k_6/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot_graph(
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    filename='images/fc6_modularidade_bp.png'
)
# Coverage
plot_graph(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    filename='images/fc6_coverage_bp.png'
)
# Performance
plot_graph(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    filename='images/fc6_performance_bp.png'
)


##############################
# Greedy Modularity Optimization computing time comparison
metrics_file <- 'jonas_si_gml_greedy_modularity/metrics_results.csv'

df <- read.csv(metrics_file)
df <- df[1:1500,]
df <- df[order(df$simulationTimeMS),]

# Modularity
png(file='images/gmo_simulation_time_bp.png', width=990, height=819)
par(mar=c(6,6,2,2)+0.1)
plot(
    x=1:length(df$simulationTimeMS),
    y=df$simulationTimeMS/60000,
    ylim=c(6,14.3),
    xlab='', ylab='',
    cex.axis=2.2,
    type='l',
    lwd=2,
    col='black'
)
title(ylab='Minutos', line=4, cex.lab=2.3)
title(xlab='Topologia', line=4, cex.lab=2.3)
dev.off()

png(file='images/gmo_modularity_computing_time_bp.png', width=990, height=819)
par(mar=c(6,6,2,2)+0.1)
plot(
    x=1:length(df$computingTimeMS),
    y=(df$computingTimeMS + df$ModularityMetricTimeMS),
    xlab='', ylab='',
    cex.axis=2.2,
    type='l',
    lwd=2,
    col='black'
)
title(ylab='Milissegundos', line=4, cex.lab=2.3)
title(xlab='Topologia', line=4, cex.lab=2.3)
dev.off()

# Computing average
simulation_average_ms <- floor(mean(df$simulationTimeMS))
summary(df$simulationTimeMS)

computingTimeMS <- df$computingTimeMS + df$ModularityMetricTimeMS
computing_average_ms <- ceiling(mean(computingTimeMS))
summary(computingTimeMS)

speedup <- floor(simulation_average_ms / computing_average_ms)




