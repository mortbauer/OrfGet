#!/bin/bash
#
# OrfGet - an orf videothek download helper script
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#

if [ $# -ne 1 ]; then
  echo "Usage: orfget.sh <tvthekurl>"
  exit 1
fi
wget -q -O /dev/stdout $1 | grep -o 'rtmp:\\/\\/[0-9a-zA-Z.\-]*/[0-9a-zA-Z.\-]*/[-0-9a-zA-Z_:]*.mp4\|rtmp:\\/\\/[0-9a-zA-Z.\-]*/[0-9a-zA-Z.\-]*/[-0-9a-zA-Z_:]*.3gp' | sort | uniq

