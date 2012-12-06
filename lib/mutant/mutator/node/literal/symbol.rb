module Mutant
  class Mutator
    class Node
      class Literal < self
        # Mutator for symbol literals
        class Symbol < self

          handle(Rubinius::AST::SymbolLiteral)

        private

          # Emit mutatns
          #
          # @return [undefined]
          #
          # @api private
          #
          def dispatch
            emit_nil
            emit_new { new_self(('s'+Random.hex_string).to_sym) }
          end
        end
      end
    end
  end
end
