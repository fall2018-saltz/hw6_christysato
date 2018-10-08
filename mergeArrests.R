
#STEPA3
#merge the two datasets with matching stateName column
USArrestsdf <- merge(dfStates,arrests, by="stateName")
