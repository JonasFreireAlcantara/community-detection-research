setwd('/home/jonas/Desktop/round_3/')

######### LPA
metrics_file <- 'jonas_si_gml_lpa/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/lpa_modularidade_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Coverage
png(file='images/lpa_coverage_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Performance
png(file='images/lpa_performance_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    main='Probabilidade de Bloqueio'
)
dev.off()


############# Greedy Modularity Optimization
metrics_file <- 'jonas_si_gml_greedy_modularity/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/gmo_modularidade_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
dev.off()
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
lines(c(0.03,0.58), c(0.1,0.45), type='l', lwd=4, col='firebrick1')
lines(c(0.015,0.5), c(0.13,0.59), type='l', lwd=4, col='firebrick1')
# Coverage
png(file='images/gmo_coverage_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Performance
png(file='images/gmo_performance_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    main='Probabilidade de Bloqueio'
)
dev.off()



############# Fluid Communities k=2
metrics_file <- 'jonas_si_gml_fluid_communities_k_2/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/fc2_modularidade_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Coverage
png(file='images/fc2_coverage_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Performance
png(file='images/fc2_performance_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    main='Probabilidade de Bloqueio'
)
dev.off()




############# Fluid Communities k=3
metrics_file <- 'jonas_si_gml_fluid_communities_k_3/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/fc3_modularidade_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Coverage
png(file='images/fc3_coverage_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Performance
png(file='images/fc3_performance_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    main='Probabilidade de Bloqueio'
)
dev.off()




############# Fluid Communities k=4
metrics_file <- 'jonas_si_gml_fluid_communities_k_4/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/fc4_modularidade_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Coverage
png(file='images/fc4_coverage_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Performance
png(file='images/fc4_performance_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    main='Probabilidade de Bloqueio'
)
dev.off()




############# Fluid Communities k=5
metrics_file <- 'jonas_si_gml_fluid_communities_k_5/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/fc5_modularidade_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Coverage
png(file='images/fc5_coverage_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Performance
png(file='images/fc5_performance_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    main='Probabilidade de Bloqueio'
)
dev.off()



############# Fluid Communities k=6
metrics_file <- 'jonas_si_gml_fluid_communities_k_6/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/fc6_modularidade_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Modularidade',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Coverage
png(file='images/fc6_coverage_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Cobertura',
    main='Probabilidade de Bloqueio'
)
dev.off()
# Performance
png(file='images/fc6_performance_bp.png', width=990, height=819)
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    xlab='Probabilidade de Bloqueio',
    ylab='Performance',
    main='Probabilidade de Bloqueio'
)
dev.off()
