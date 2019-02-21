require "application_system_test_case"

class ProductVendorsTest < ApplicationSystemTestCase
  setup do
    @product_vendor = product_vendors(:one)
  end

  test "visiting the index" do
    visit product_vendors_url
    assert_selector "h1", text: "Product Vendors"
  end

  test "creating a Product vendor" do
    visit product_vendors_url
    click_on "New Product Vendor"

    fill_in "Price", with: @product_vendor.price
    fill_in "Product", with: @product_vendor.product_id
    fill_in "Vendor", with: @product_vendor.vendor_id
    click_on "Create Product vendor"

    assert_text "Product vendor was successfully created"
    click_on "Back"
  end

  test "updating a Product vendor" do
    visit product_vendors_url
    click_on "Edit", match: :first

    fill_in "Price", with: @product_vendor.price
    fill_in "Product", with: @product_vendor.product_id
    fill_in "Vendor", with: @product_vendor.vendor_id
    click_on "Update Product vendor"

    assert_text "Product vendor was successfully updated"
    click_on "Back"
  end

  test "destroying a Product vendor" do
    visit product_vendors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product vendor was successfully destroyed"
  end
end
