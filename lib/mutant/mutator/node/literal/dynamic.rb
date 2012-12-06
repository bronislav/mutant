module Mutant
  class Mutator
    class Node
      class Literal
        # Abstract mutations on dynamic literals
        class Dynamic < self
          include AbstractType

        private

          # Emit mutants
          #
          # @return [undefined]
          #
          # @api private
          #
          def dispatch
            emit_nil
          end
        end
      end
    end
  end
end
