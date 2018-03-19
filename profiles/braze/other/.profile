export arcadia_SERVER=localhost:21000

rspec() {
  if (($# > 9)); then
    echo "Too many args. Use bundle exec rspec instead."
    return
  fi
  bundle exec rspec $1 $2 $3 $4 $5 $6 $7 $8 $9
}
