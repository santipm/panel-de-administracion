ActiveAdmin.register Articulo do
  permit_params :titulo, :cuerpo, :categoria_id


  index do
    selectable_column
    id_column
    column :titulo
    column :categoria_id
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Artículos" do
      f.input :titulo
      f.input :cuerpo, as: :html_editor
      f.input :categoria_id, :as =>:select, :collection => Hash[Categoria.all.map {|c|[c.nombre,c.id]}]
    end
    f.actions
  end
 


end
