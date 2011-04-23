# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
ActiveSupport::Inflector.inflections do |inflect|

	# Neste arquivo estão as especificações gramaticais do sistema, no nosso caso, como a lingua portuguesa é um pouco
	# mais complicada que a lingua inglesa, devemos especificar que alguns plurais não são apenas formados por a
	# palavra e a letra S, como é o caso do modelo de "participacao", que pluralizado, na lingua inglesa, seria 
	# "participacaos", especificamos aqui que o correto é "participacoes".

	inflect.irregular('participacao', 'participacoes')

end