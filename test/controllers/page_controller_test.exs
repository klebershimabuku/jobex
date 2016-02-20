defmodule Jobex.PageControllerTest do
  use Jobex.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Job Board"
  end
end
