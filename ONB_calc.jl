using LinearAlgebra

function Create_ONB(Mtrx)
    Basis = Vector{Float64}[]
    
    for i in 1:size(Mtrx)[2]
        push!(Basis, Mtrx[:, i])
    end

    for i in 1:size(Basis)[1]
        for j in 1:i-1
            Basis[i] = Basis[i] - (dot(Basis[j], Mtrx[:, i])/dot(Basis[j], Basis[j]))Basis[j]
        end
        Basis[i] = (1/sqrt(dot(Basis[i], Basis[i])))Basis[i]
    end
    
    return Basis
    
end

