Deface::Override.new(
  virtual_path:  'spree/admin/shared/_menu',
  name:          'add_user_roles_menu_links',
  insert_bottom: "[data-hook='admin_tabs']"
) do
  <<-HTML
    <% if can? :admin, Spree::Role %>
      <li class="menu-item <%=  mark_as_active(spree.admin_roles_path, 'active')  %>">
        <%= link_to spree.admin_roles_path do %>
          <i class="icon menu-icon menu-icon-users mr-2"></i>
          <%= Spree.t(:roles, scope: [:admin, :tab]) %>
        <% end %>
      </li>    
    <% end %>
  HTML
end
