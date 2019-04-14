FROM perl:5.18.2

ENV MOJO_MODE=development

# SVN and CPAN mirrors
export CPAN_MIRROR=https://cpan.metacpan.org

RUN cpanm local::lib
RUN cpanm App::cpm

RUN apt-get update

WORKDIR /srv/app

# Pull the latest dependencies

# Install the dependencies to ./local
COPY cpanfile /srv/app
RUN cpm install --mirror https://cpan.metacpan.org --mirror $PINTO_MIRROR --mirror-only

# Copy project code
COPY . /srv/app

# Run the tests
#RUN prove -Mlocal::lib=local -Ilib -It/lib -j4 -lvr t/

# Start the app
CMD ["perl", "-Mlocal::lib=local", "bin/app.pl", "daemon"]
