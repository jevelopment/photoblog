# Use the official Jekyll image as the base image
FROM jekyll/jekyll:latest

# Set the working directory in the container
WORKDIR /srv/jekyll

# Copy the local Gemfile into the container
COPY Gemfile .

# Install the required gems
RUN bundle install

# Copy the local project files into the container
COPY . .

# Expose the default Jekyll port
EXPOSE 4000

# Command to run the Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--config", "_config.yml"]

