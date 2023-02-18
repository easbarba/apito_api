# apito_api is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Qas is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Qas. If not, see <https://www.gnu.org/licenses/>.

.DEFAULT_GOAL := test

run:
	symfony server:start --port=${PORT}

lint:
	./vendor/bin/phpinsights

fmt:
	./vendor/bin/pint

test:
	./bin/phpunit

deps:
	composer install

db-start:
	psql -U ${DB_USERNAME} -d postgres -a -f OPS/sql/start.sql

db-clean:
	psql -U ${DB_USERNAME} -d postgres -a -f OPS/sql/clean.sql

system:
	guix shell --pure --container

.PHONY := run deps test lint db-start db-clean system fmt
# boot:
# cache:
# repl:
