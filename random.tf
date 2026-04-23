resource "time_sleep" "before_random" {
  create_duration = "15s"

  # Force this chain to re-run on every apply for test timing.
  triggers = {
    apply_started_at = timestamp()
  }
}

resource "random_id" "server" {
  byte_length = 1

  keepers = {
    sleep_id = time_sleep.before_random.id
  }

  depends_on = [time_sleep.before_random]
}

resource "time_sleep" "after_random" {
  create_duration = "15s"

  triggers = {
    random_id = random_id.server.hex
  }

  depends_on = [random_id.server]
}

resource "random_id" "verification" {
  byte_length = 1

  keepers = {
    sleep_id = time_sleep.after_random.id
  }

  depends_on = [time_sleep.after_random]
}
