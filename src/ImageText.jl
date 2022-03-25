module ImageText

using Images


key=[" ", ".", ":", "-", "=", "+", "*", "#", "%", "@"]

function float_to_char(n)

    if n < 0.1
        return key[1]
    elseif n < 0.2
        return key[2]
    elseif n < 0.3
        return key[3]
    elseif n < 0.4
        return key[4]
    elseif n < 0.5
        return key[5]
    elseif n < 0.6
        return key[6]
    elseif n < 0.7
        return key[7]
    elseif n < 0.8
        return key[8]
    elseif n < 0.9
        return key[9]
    elseif n <= 1.0
        return key[10]
    else
        println("outofrange $n should be zero to 1")
        return "X"
    end
    return "X"
end


function go(img)

    gray_image = Gray.(img2)
    nx,ny = size(gray_image)

    str = []
    
    
    for x = 1:nx
        vs = String[]
        for y = 1:ny
            push!(vs, float_to_char(gray_image[x,y]))
        end
        pushd!(str, vs)
        println(join(vs))
    end

    return str

end

end  #end module
