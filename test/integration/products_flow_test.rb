require "test_helper"

class ProductsFlowTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)        # from fixtures
    @product = products(:one)  # from fixtures
    sign_in @user
  end

  test "user can view product index" do
    get products_path
    assert_response :success
    assert_select "h1", "Products"           # page heading
    assert_select "a", @product.name      # product listed
  end

  test "user can view a product" do
    get product_path(@product)
    assert_response :success
    assert_select "h1", "Showing product"
    assert_select "a", @product.name
  end

  test "user can create a product" do
    assert_difference("Product.count", 1) do
      post products_path, params: {
        product: {
          name: "New Product",
          price: 19.99
        }
      }
    end
    follow_redirect!
    assert_response :success
    assert_match "New Product", response.body
  end
end
