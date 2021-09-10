graph [
  multigraph 1
  DateObtained "31/03/11"
  GeoLocation "US"
  GeoExtent "Country"
  Network "Pacific-Wave"
  Provenance "Primary"
  Note "L1/L2 only?"
  Source "http://www.pacificwave.net/technology/architecture/"
  Version "1.0"
  DateType "Historic"
  Type "REN"
  Backbone 0
  Commercial 0
  label "Pacificwave"
  ToolsetVersion "0.3.34dev-20120328"
  Customer 0
  IX 1
  SourceGitVersion "e278b1b"
  DateModifier "="
  DateMonth "05"
  LastAccess "31/03/11"
  Access 0
  Layer "IP"
  Creator "Topology Zoo Toolset"
  Developed 0
  Transit 0
  NetworkDate "2010_05"
  DateYear "2010"
  LastProcessed "2011_09_01"
  Testbed 0
  node [
    id 0
    label "0"
    Internal 0
  ]
  node [
    id 1
    label "1"
    Internal 0
  ]
  node [
    id 2
    label "2"
    Internal 0
  ]
  node [
    id 3
    label "3"
    Internal 0
  ]
  node [
    id 4
    label "4"
    Internal 0
  ]
  node [
    id 5
    label "5"
    Internal 0
  ]
  node [
    id 6
    label "6"
    Internal 0
  ]
  node [
    id 7
    label "7"
    Internal 0
  ]
  node [
    id 8
    label "8"
    Internal 0
  ]
  node [
    id 9
    label "9"
    Internal 0
  ]
  node [
    id 10
    label "10"
    Country "United States"
    Longitude -122.03635
    Internal 1
    Latitude 37.36883
  ]
  node [
    id 11
    label "11"
    Country "United States"
    Longitude -122.33207
    Internal 1
    Latitude 47.60621
  ]
  node [
    id 12
    label "12"
    Internal 0
  ]
  node [
    id 13
    label "13"
    Internal 0
  ]
  node [
    id 14
    label "14"
    Internal 0
  ]
  node [
    id 15
    label "15"
    Country "United States"
    Longitude -118.24368
    Internal 1
    Latitude 34.05223
  ]
  node [
    id 16
    label "16"
    Internal 0
  ]
  node [
    id 17
    label "17"
    Internal 0
  ]
  edge [
    source 0
    target 11
    key 0
    LinkType "T2"
    LinkSpeed "10"
    LinkSpeedUnits "G"
    LinkNote "KreoNe  it/s"
    LinkLabel "KreoNet2  10Gbit/s"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 1
    target 11
    key 0
    LinkLabel "CANARIE N*10Gbit/s"
  ]
  edge [
    source 2
    target 9
    key 0
    LinkLabel "Indirect Connectivity"
  ]
  edge [
    source 2
    target 10
    key 0
    LinkSpeed "10"
    LinkNote "CENIC  it/s"
    LinkLabel "CENIC  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 3
    target 11
    key 0
    LinkSpeed "2.5"
    LinkNote "CSTNet  it/s"
    LinkLabel "CSTNet 2.5 Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 2500000000.0
  ]
  edge [
    source 4
    target 11
    key 0
    LinkSpeed "10"
    LinkNote "Cavewave  it/s"
    LinkLabel "Cavewave  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 4
    target 11
    key 1
    LinkSpeed "10"
    LinkNote "CANARIE (Provided y NLR)  it/s"
    LinkLabel "CANARIE (Provided by NLR)  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 4
    target 11
    key 2
    LinkSpeed "10"
    LinkNote "Translight  it/s"
    LinkLabel "Translight  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 5
    target 11
    key 0
    LinkSpeed "10"
    LinkNote "PNWP  it/s"
    LinkLabel "PNWGP  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 5
    target 6
    key 0
    LinkSpeed "1"
    LinkNote "PNWP it/s"
    LinkLabel "PNWGP 1Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 1000000000.0
  ]
  edge [
    source 5
    target 7
    key 0
    LinkSpeed "10"
    LinkNote "PNWP it/s"
    LinkLabel "PNWGP 10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 6
    target 11
    key 0
    LinkSpeed "10"
    LinkNote "PNWP  it/s"
    LinkLabel "PNWGP  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 7
    target 11
    key 0
    LinkSpeed "10"
    LinkNote "PNWP  it/s"
    LinkLabel "PNWGP  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 8
    target 17
    key 0
    LinkLabel "Indirect Connectivity"
  ]
  edge [
    source 8
    target 15
    key 0
    LinkSpeed "10"
    LinkNote "CENIC it/s"
    LinkLabel "CENIC 10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 9
    target 10
    key 0
    LinkSpeed "10"
    LinkNote "CENIC  it/s"
    LinkLabel "CENIC  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 10
    target 11
    key 0
    LinkSpeed "10"
    LinkNote "PWAVE  it/s"
    LinkLabel "PWAVE  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 10
    target 11
    key 1
    LinkSpeed "10"
    LinkNote "PWAVE  it/s"
    LinkLabel "PWAVE  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 10
    target 15
    key 0
    LinkSpeed "10"
    LinkNote "PWAVE  it/s"
    LinkLabel "PWAVE  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 10
    target 15
    key 1
    LinkSpeed "10"
    LinkNote "PWAVE  it/s"
    LinkLabel "PWAVE  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 11
    target 15
    key 0
    LinkSpeed "10"
    LinkNote "PWAVE it/s"
    LinkLabel "PWAVE 10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 11
    target 15
    key 1
    LinkSpeed "10"
    LinkNote "Pwave it/s"
    LinkLabel "Pwave 10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 12
    target 15
    key 0
    LinkSpeed "10"
    LinkNote "I2  it/s"
    LinkLabel "I2  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 13
    target 15
    key 0
    LinkSpeed "10"
    LinkNote "PWAVE  it/s"
    LinkLabel "PWAVE  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 14
    target 15
    key 0
    LinkSpeed "10"
    LinkNote "AARNet  it/s"
    LinkLabel "AARNet  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 15
    target 16
    key 0
    LinkSpeed "10"
    LinkNote "JN2  it/s"
    LinkLabel "JGN2  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
  edge [
    source 15
    target 17
    key 0
    LinkSpeed "10"
    LinkNote "CENIC  it/s"
    LinkLabel "CENIC  10Gbit/s"
    LinkSpeedUnits "G"
    LinkSpeedRaw 10000000000.0
  ]
]
