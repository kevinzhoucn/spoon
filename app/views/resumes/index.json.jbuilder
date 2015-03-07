json.array!(@resumes) do |resume|
  json.extract! resume, :id, :title, :content
  json.url resume_url(resume, format: :json)
end
