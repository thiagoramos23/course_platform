defmodule CoursePlatform.Repo do
  use Ecto.Repo,
    otp_app: :course_platform,
    adapter: Ecto.Adapters.Postgres
end
