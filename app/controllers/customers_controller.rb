class CustomersController < ApplicationController
  PAGE_SIZE = 10
  def index
    @key_words = params[:key_words]
    @page = (params[:page] || 0).to_i
    if @key_words.present?
      customer_search_term = CustomerSearchTerm.new(@key_words)
      @customers = Customer.where(customer_search_term.where_clause, customer_search_term.where_args)
        .order(customer_search_term.order).offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
    else
      @customers = Customer.all.offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
    end
  end
end
