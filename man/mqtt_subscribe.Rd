% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dsl.R
\name{mqtt_subscribe}
\alias{mqtt_subscribe}
\title{Subscribe to a channel identifying a callback}
\usage{
mqtt_subscribe(mobj, topic, callback, qos = 0)
}
\arguments{
\item{mobj}{an mqtt object created with `mqtt_broker()` or augmented by other functions}

\item{topic}{to subscribe to}

\item{callback}{your callback function (must have a signature consisting
of these parameters: `id`, `topic`, `payload`, `qos`, `retain`, `con`) and you should
ideally test `topic` in your function to ensure it is the one you should
be responding to. `con` provodes direct access to internal object methods.
So, for example, you can run `con$publish(...)` inside a message callback
handler to publish your own data based on what you received from the broker.}

\item{qos}{0:3}
}
\value{
`mobj`
}
\description{
Subscribe to a channel identifying a callback
}
