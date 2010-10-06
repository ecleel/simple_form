module SimpleForm
  module Components
    module LabelInput
      def self.included(base)
        base.send :include, SimpleForm::Components::Labels
      end

      def label_input
        (options[:label] == false ? "".force_encoding('utf-8') : label.force_encoding('utf-8')) + input.force_encoding('utf-8')
      end
    end
  end
end