transpose1 :: [[a]]->[[a]]
transpose1 ([]:_)=[]
transpose1 x = (map head x):transpose1 (map tail x)