function get_pos_moves_rook(file, rank, color) 
    posMoves = {}
    r = rank
    while r > 1 do
        posMove = files[file]..ranks[r-1]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove
        r = r - 1
    end
    r = rank
    while r < 8 do
        posMove = files[file]..ranks[r+1]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove

        r = r + 1
    end
    f = file
    while f > 1 do
        posMove = files[f-1]..ranks[rank]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove

        f = f - 1
    end
    f = file
    while f < 8 do
        posMove = files[f+1]..ranks[rank]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove

        f = f + 1
    end

    return posMoves
end
