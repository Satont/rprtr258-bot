package message

import (
	"time"

	"github.com/gempir/go-twitch-irc/v3"
)

const MaxMessageLength = 499

type TwitchMessage struct {
	Text    string
	User    twitch.User
	At      time.Time
	Channel string
}
