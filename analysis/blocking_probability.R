######### LPA
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_lpa/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    main='LPA - EON Blocking Probability vs Modularity'
)
# Coverage
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    main='LPA - EON Blocking Probability vs Coverage'
)
# Performance
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    main='LPA - EON Blocking Probability vs Performance'
)


############# Greedy Modularity Optimization
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_greedy_modularity/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    main='Greedy Modularity - EON Blocking Probability vs Modularity'
)
# Coverage
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    main='Greedy Modularity - EON Blocking Probability vs Coverage'
)
# Performance
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    main='Greedy Modularity - EON Blocking Probability vs Performance'
)



############# Fluid Communities k=2
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_2/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    main='Fluid Communities k=2 - EON Blocking Probability vs Modularity'
)
# Coverage
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    main='Fluid Communities k=2 - EON Blocking Probability vs Coverage'
)
# Performance
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    ylim=c(0.4,0.9),
    main='Fluid Communities k=2 - EON Blocking Probability vs Performance'
)




############# Fluid Communities k=3
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_3/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    main='Fluid Communities k=3 - EON Blocking Probability vs Modularity'
)
# Coverage
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    main='Fluid Communities k=3 - EON Blocking Probability vs Coverage'
)

# Performance
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    main='Fluid Communities k=3 - EON Blocking Probability vs Performance'
)




############# Fluid Communities k=4
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_4/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    ylim=c(0.0, 0.7),
    main='Fluid Communities k=4 - EON Blocking Probability vs Modularity'
)
# Coverage
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    main='Fluid Communities k=4 - EON Blocking Probability vs Coverage'
)
# Performance
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    main='Fluid Communities k=4 - EON Blocking Probability vs Performance'
)





############# Fluid Communities k=5
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_5/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    main='Fluid Communities k=5 - EON Blocking Probability vs Modularity'
)
# Coverage
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    main='Fluid Communities k=5 - EON Blocking Probability vs Coverage'
)
# Performance
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    main='Fluid Communities k=5 - EON Blocking Probability vs Performance'
)




############# Fluid Communities k=6
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_6/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$eonBlockingProbability,
    y=df$ModularityMetric,
    main='Fluid Communities k=6 - EON Blocking Probability vs Modularity'
)
# Coverage
plot(
    x=df$eonBlockingProbability,
    y=df$CoverageMetric,
    main='Fluid Communities k=6 - EON Blocking Probability vs Coverage'
)
# Performance
plot(
    x=df$eonBlockingProbability,
    y=df$PerformanceMetric,
    main='Fluid Communities k=6 - EON Blocking Probability vs Performance'
)
