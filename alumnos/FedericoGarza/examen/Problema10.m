# Primer función #

X= @(arr) sum(arr)/length(arr)
S= @(arr) (1.0/(length(arr)-1))*sum(((arr.-X(arr)).**2))

# Segunda función #

S2=@(arr) (1.0/(length(arr)-1))*(sum(arr.*arr).- (1.0/length(arr))*((sum(arr))**2))

# Evaluando sin modificar #

S([10000,10001,10002])
S2([10000,10001,10002])

# SP #

S(single([10000,10001,10002]))
S2(single([10000,10001,10002])) # Es en este donde truena espantosamente, en los demás sale 1 #

# DP #

S(double([10000,10001,10002]))
S2(double([10000,10001,10002]))


#Nota: busqué y al parecer la mínima precisión es de single precision#

 
