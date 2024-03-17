require "application_system_test_case"

class SnapshotsTest < ApplicationSystemTestCase
  setup do
    @snapshot = snapshots(:one)
  end

  test "visiting the index" do
    visit snapshots_url
    assert_selector "h1", text: "Snapshots"
  end

  test "should create snapshot" do
    visit snapshots_url
    click_on "New snapshot"

    fill_in "Color", with: @snapshot.color
    fill_in "Title", with: @snapshot.title
    click_on "Create Snapshot"

    assert_text "Snapshot was successfully created"
    click_on "Back"
  end

  test "should update Snapshot" do
    visit snapshot_url(@snapshot)
    click_on "Edit this snapshot", match: :first

    fill_in "Color", with: @snapshot.color
    fill_in "Title", with: @snapshot.title
    click_on "Update Snapshot"

    assert_text "Snapshot was successfully updated"
    click_on "Back"
  end

  test "should destroy Snapshot" do
    visit snapshot_url(@snapshot)
    click_on "Destroy this snapshot", match: :first

    assert_text "Snapshot was successfully destroyed"
  end
end
