;; extends

(subprogram_body endname: (_) @function)

(attribute_designator (identifier) @attribute)
(attribute_designator "delta" @attribute)

(full_type_declaration (identifier) @type)
(decimal_fixed_point_definition "delta" @keyword.type)
(ordinary_fixed_point_definition  "delta" @keyword.type)
(real_range_specification "range" @keyword.type)

(attribute_definition_clause ["for" "use"] @keyword.type)

(assignment_statement
	variable_name: (selected_component
      selector_name: (identifier) @selector))

(object_renaming_declaration
   object_name: (selected_component
      selector_name: (identifier) @selector))

(exit_statement ["exit" "when" ] @keyword.repeat)

[ "digits" ] @keyword.type

