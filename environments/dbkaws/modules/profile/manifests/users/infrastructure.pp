class profile::users::infrastructure {
	::Users::Virtualuser <| gid == 'infrastructure' |>
	::Users::Virtualkey <| title == 'flauret' |>
	::Users::Virtualkey <| title == 'irenaz' |>
	::Users::Virtualkey <| title == 'daniely' |>
	::Users::Virtualkey <| title == 'radostinad' |>
	::Users::Virtualkey <| title == 'nikolai' |>
}
