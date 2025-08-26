import Game.Metadata

World "Intoduction"
Level 1

Title "Proofs as Functions"

Introduction
"In Lean, the type-checker analogy of proofs work as follows:
- When provided, assumptions known to be true are input arguments of certain types.
- The expected output of the function has a type that represents the claim of a proof.
- Given the appropriate manipulations of input arguments, an output argument that is of the
correct type represents a complete proof.
- Additionally, an output argument of an incorrect type represents an incomplete or incorrect
proof.
"

example (P : Prop) : Prop := by exact P
-- variable (P Q : Prop)

-- Hint, Branch
Statement (P : Prop) : Prop := by
  Hint "This proof can be read as \"assuming $P$ is true, prove that $P$ is true\". In terms of
  functions, it can be assumed that the input argument is of type $P$ and the output argument *must*
  be of type $P$. Try typing out `apply P` in the text box."
  exact P


Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic exact apply
-- NewTactic rw rfl
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
