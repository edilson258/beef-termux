#
# Copyright (c) 2006-2022 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - http://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Overflow_cookiejar < BeEF::Core::Command
  def self.options
    [
      { 'name' => 'preserveCookies', 'type' => 'checkbox', 'ui_label' => 'Attempt to preserve all non-httpOnly cookies', 'checked' => 'true' }
    ]
  end

  def post_execute
    save({ 'result' => @datastore['result'] })
  end
end
