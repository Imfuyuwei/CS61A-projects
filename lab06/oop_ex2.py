class Human:
	genus = "Homo"
	species = "H. Sapiens"

	def __init__(self, name, bloodtype):
		self.name = name
		self.bloodtype = bloodtype
		self.hungry = True
		self.is_alive = True
		self.friends = []

	def eat(self):
		self.hungry = False

	def kill(self):
		self.is_alive = False

	def befriend(self, other_human):
		if other_human in self.friends:
			return "Already in friends"
		self.friends.append(other_human)
		other_human.friends.append(self)

	def list_friends(self):
		return [f.name for f in self.friends]

