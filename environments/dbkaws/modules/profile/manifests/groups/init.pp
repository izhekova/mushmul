class profile::groups::init {
    include groups
    Group <| title == 'infrastructure' |>
    Group <| title == 'support' |>
}
