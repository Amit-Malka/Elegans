using DataStructures

_circget(v,i) = v[ mod( i-firstindex(v), length(v) ) + firstindex(v) ]

function n_highest_peaks_circular( v::AbstractVector{T}, n ) where T
    peaks = PriorityQueue{Int,T}()
    for i in eachindex(v)
        x = _circget(v,i)
        if _circget(v,i-1) < x > _circget(v,i+1)
            enqueue!(peaks,i,x)
            if length(peaks) > n
                dequeue!(peaks)
            end
        end
    end
    peaks
end
