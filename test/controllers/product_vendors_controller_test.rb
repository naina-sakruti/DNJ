require 'test_helper'

class ProductVendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_vendor = product_vendors(:one)
  end

  test "should get index" do
    get product_vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_product_vendor_url
    assert_response :success
  end

  test "should create product_vendor" do
    assert_difference('ProductVendor.count') do
      post product_vendors_url, params: { product_vendor: { price: @product_vendor.price, product_id: @product_vendor.product_id, vendor_id: @product_vendor.vendor_id } }
    end

    assert_redirected_to product_vendor_url(ProductVendor.last)
  end

  test "should show product_vendor" do
    get product_vendor_url(@product_vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_vendor_url(@product_vendor)
    assert_response :success
  end

  test "should update product_vendor" do
    patch product_vendor_url(@product_vendor), params: { product_vendor: { price: @product_vendor.price, product_id: @product_vendor.product_id, vendor_id: @product_vendor.vendor_id } }
    assert_redirected_to product_vendor_url(@product_vendor)
  end

  test "should destroy product_vendor" do
    assert_difference('ProductVendor.count', -1) do
      delete product_vendor_url(@product_vendor)
    end

    assert_redirected_to product_vendors_url
  end
end
