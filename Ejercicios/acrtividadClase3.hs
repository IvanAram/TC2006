data Tree x = Empty | Node x (Tree x) (Tree x) deriving (Show)

insertNode n Empty = Node n Empty Empty
insertNode n (Node x left right)
	| n > x = Node x left (insertNode n right)
	| x > n = Node x (insertNode n left) right
	| otherwise = Node x left right
	
createTreeFromList lista = func lista Empty
	where func lista x
		| lista == [] = x
		| otherwise = func (tail lista) (insertNode (head lista) x)