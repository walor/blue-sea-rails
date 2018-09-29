# CSV.foreach("/Users/angelito/Developement/logistic/data_products/familia_catalogo_bienes.csv") do |row|
#   if row[1].try(:size) == 2
#     Group.create(name: row[1], description: row[3], type_group: 1)
#   elsif row[2].try(:size) == 2
#     SubGroup.create(name: row[2], description: row[4], group_id: Group.last.id, type_sub_group: 1)
#   elsif row[1].try(:size) == 8
#     Category.create(name: row[1], description: row[5], sub_group_id: SubGroup.last.id, type_category: 1)
#   end
# end

# CSV.foreach("/Users/angelito/Developement/logistic/data_products/familia_catalogo_servicios.csv") do |row|
#   if row[1].try(:size) == 2
#     Group.create(name: row[1], description: row[3], type_group: 2)
#   elsif row[2].try(:size) == 2
#     SubGroup.create(name: row[2], description: row[4], group_id: Group.last.id, type_sub_group: 2)
#   elsif row[1].try(:size) == 8
#     Category.create(name: row[1], description: row[5], sub_group_id: SubGroup.last.id, type_category: 2)
#   end
# end


# val = ""
# prd = nil
# CSV.foreach("/Users/angelito/Developement/logistic/data_products/catalogo_Items_bienes_parte1.csv") do |row|
#   if row[5].try(:size) == 12
#     category_id_value = (val != row[5][0...8])? Category.where("name=? and type_category=?", row[5][0...8], 1).limit(1).pluck(:id).first : prd.category_id
#     val = row[5][0...8]
#     prd = GenericProduct.create(
#       name: row[5],
#       description: row[8],
#       measurement_unit: row[14],
#       generic_product_type: 1,
#       category_id: category_id_value
#     )
#   end
# end

# val = ""
# prd = nil
# CSV.foreach("/Users/angelito/Developement/logistic/data_products/catalogo_Items_bienes_parte2.csv") do |row|
#   if row[5].try(:size) == 12
#     category_id_value = (val != row[5][0...8])? Category.where("name=? and type_category=?", row[5][0...8], 1).limit(1).pluck(:id).first : prd.category_id
#     val = row[5][0...8]
#     prd = GenericProduct.create(
#       name: row[5],
#       description: row[8],
#       measurement_unit: row[14],
#       generic_product_type: 1,
#       category_id: category_id_value
#     )
#   end
# end

# val = ""
# prd = nil
# CSV.foreach("/Users/angelito/Developement/logistic/data_products/catalogo_Items_bienes_parte3.csv") do |row|
#   if row[5].try(:size) == 12
#     category_id_value = (val != row[5][0...8])? Category.where("name=? and type_category=?", row[5][0...8], 1).limit(1).pluck(:id).first : prd.category_id
#     val = row[5][0...8]
#     prd = GenericProduct.create(
#       name: row[5],
#       description: row[8],
#       measurement_unit: row[14],
#       generic_product_type: 1,
#       category_id: category_id_value
#     )
#   end
# end

# val = ""
# prd = nil
# CSV.foreach("/Users/angelito/Developement/logistic/data_products/catalogo_Items_bienes_parte4.csv") do |row|
#   if row[5].try(:size) == 12
#     category_id_value = (val != row[5][0...8])? Category.where("name=? and type_category=?", row[5][0...8], 1).limit(1).pluck(:id).first : prd.category_id
#     val = row[5][0...8]
#     prd = GenericProduct.create(
#       name: row[5],
#       description: row[8],
#       measurement_unit: row[14],
#       generic_product_type: 1,
#       category_id: category_id_value
#     )
#   end
# end

# val = ""
# prd = nil
# CSV.foreach("/Users/angelito/Developement/logistic/data_products/catalogo_Items_bienes_parte5.csv") do |row|
#   if row[5].try(:size) == 12
#     category_id_value = (val != row[5][0...8])? Category.where("name=? and type_category=?", row[5][0...8], 1).limit(1).pluck(:id).first : prd.category_id
#     val = row[5][0...8]
#     prd = GenericProduct.create(
#       name: row[5],
#       description: row[8],
#       measurement_unit: row[14],
#       generic_product_type: 1,
#       category_id: category_id_value
#     )
#   end
# end

# val = ""
# prd = nil
# CSV.foreach("/Users/angelito/Developement/logistic/data_products/catalogo_Items_servicios.csv") do |row|
#   if row[5].try(:size) == 12
#     category_id_value = (val != row[5][0...8])? Category.where("name=? and type_category=?", row[5][0...8], 2).limit(1).pluck(:id).first : prd.category_id
#     val = row[5][0...8]
#     prd = GenericProduct.create(
#       name: row[5],
#       description: row[8],
#       measurement_unit: row[14],
#       generic_product_type: 2,
#       category_id: category_id_value
#     )
#   end
# end

# GenericProduct.all.each do |gp|
#   product = Product.create(
#     name: gp.name,
#     description: gp.description,
#     desc_measurement_unit: gp.measurement_unit,
#     category_id: gp.category.id,
#     sub_group_id: gp.category.sub_group.id,
#     group_id: gp.category.sub_group.group.id,
#     type_product: gp.category.type_category
#   )
#   #puts product.errors.to_json
# end

MovementType.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('movement_types')
# update_seq_sql = "update sqlite_sequence set seq = 0 where name = 'movement_types';"
# ActiveRecord::Base.connection.execute(update_seq_sql)
# MovementType.create!(name: 'SALDO INICIAL', type_process: 'inicial', signal: +1)
# MovementType.create!(name: 'ORDEN DE COMPRA',  type_process: 'entrada', signal: +1)
# MovementType.create!(name: 'SALIDA ORDEN DE COMPRA',  type_process: 'salida', signal: -1)
# MovementType.create!(name: 'SALIDA A OFICINAS',  type_process: 'salida', signal: -1)
# MovementType.create!(name: 'DEVOLUCION A PROVEEDOR', type_process: 'salida', signal: -1)
# MovementType.create!(name: 'DEVOLUCION A ALMACEN',  type_process: 'entrada', signal: +1)
# MovementType.create!(name: 'DONACION',  type_process: 'entrada', signal: +1)
# MovementType.create!(name: 'TRANSFERENCIA ENTRE ALMACENES',  type_process: 'entrada', signal: -1)
# MovementType.create!(name: 'TRANSFERENCIA ENTRE ALMACENES',  type_process: 'salida', signal: +1)
# MovementType.create!(name: 'AJUSTE DE INVENTARIO',  type_process: 'entrada', signal: +1)
# MovementType.create!(name: 'AJUSTE DE INVENTARIO',  type_process: 'salida', signal: -1)
# MovementType.create!(name: 'DE BAJA',  type_process: 'salida', signal: -1)
# MovementType.create!(name: 'COMPRA',  type_process: 'entrada', signal: +1) #por nota de entrada



MovementType.create!(name: 'Saldo Inicial', type_process: 'inicial', signal: +1)
MovementType.create!(name: 'Orden de Compra',  type_process: 'entrada', signal: +1)
MovementType.create!(name: 'Salida Orden de Compra',  type_process: 'salida', signal: -1)
MovementType.create!(name: 'Salida a Oficinas',  type_process: 'salida', signal: -1)
MovementType.create!(name: 'Devolucion a Proveedor', type_process: 'salida', signal: -1)
MovementType.create!(name: 'Devolucion a Almacen',  type_process: 'entrada', signal: +1)
MovementType.create!(name: 'Donacion',  type_process: 'entrada', signal: +1)
MovementType.create!(name: 'Transferencia entre Almacenes',  type_process: 'entrada', signal: -1)
MovementType.create!(name: 'Transferencia entre Almacenes',  type_process: 'salida', signal: +1)
MovementType.create!(name: 'Ajuste de Inventario',  type_process: 'entrada', signal: +1)
MovementType.create!(name: 'Ajuste de Inventario',  type_process: 'salida', signal: -1)
MovementType.create!(name: 'De Baja',  type_process: 'salida', signal: -1)
MovementType.create!(name: 'Compra',  type_process: 'entrada', signal: +1) #por nota de entrada


MeasurementUnit.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('measurement_units')

measurement_units = Product.pluck(:desc_measurement_unit).uniq
measurement_units.each do |measurement_unit|
  MeasurementUnit.create!(name: measurement_unit, active: true)
end