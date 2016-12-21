class CustomersController < ApplicationController
  def index
    if params[:key_words].present?
      customer_search_term = CustomerSearchTerm.new(params[:key_words])
      @customers = Customer.where(customer_search_term.where_clause, customer_search_term.where_args).order(customer_search_term.order).limit(20)
    else
      @customers = []
    end
  end
end
