json.array!(@boards) do |board|
  json.extract! board, :id, :url
  json.url board_url(board, format: :json)
end
