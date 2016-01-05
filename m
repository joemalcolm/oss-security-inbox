X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1419" "Monday" "4" "January" "2016" "17:09:15" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNUfEJ3Kx9oSt0BdykkoOPsmm+qKc9N3NOWThQSgY23M6Q@mail.gmail.com>" "42" "[oss-security] Remote Command Injection in Ruby Gem colorscore <=0.0.4" "^Date:" nil nil "1" "2016010501:09:15" "[oss-security] Remote Command Injection in Ruby Gem colorscore <=0.0.4" (number mark "U       reed@reedlod Jan  4   42/1419  " thread-indent "\"[oss-security] Remote Command Injection in Ruby Gem colorscore <=0.0.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21935 invoked by uid 550); 5 Jan 2016 01:09:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21882 invoked from network); 5 Jan 2016 01:09:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=O3WJldxybPnxoN+4O5u6uc50sZVbltZtsqBENefe3vg=;
        b=Jw62W2KGaj8JcoimAmFjVCHzRfkQbMGRZE4lLhHkep4jPyKr0YisNU4o9gUYmUdoWQ
         vfBHDiay0q2KJewXtzsCFB7QQtU5DIqiuQwdR3jJkBW3VNMcRNlWvQd6KmkOeU34+u4o
         zsARR7lO+S7n1DFfNrixsnygjwY/g2c3nJgSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=O3WJldxybPnxoN+4O5u6uc50sZVbltZtsqBENefe3vg=;
        b=AsB3UtL9veVdoxdAUiptVJG1vg7uM7/3uL7Tgu0pDBvXwaUiP5ZlLUxVnVSgcertEU
         JqY0OJsTAAxTh+tRTqtxuYAWWGLHCLS4QdFvQAQh7Dxa/PQgDRzFNFQhdzJLFoULWk8A
         ZBjdgOOVwB9NzGpYFxaiXfqu6La3I4XvJvHWwiN7sbA+Po0T1KgC/C28QlQB5H2Do9qF
         YwzQLtItpWCvbQ/nYJna91JngWzO0KlIkoLgKmGVWBOSkaAF1Da/YKWcxdZZMN3bdD6H
         hcaAgn26jVbTw0hHNvQSF4HgXFTAAqSzwOXkIOfVk4Yed4RuF0mKH5j+WCshGZyzxl2p
         tyWw==
X-Gm-Message-State: ALoCoQnibz/Ll0UnC+eBbNh+pEtA1OtoC9aRoUcJQMNGQUubMB91HYmUI1S5nml8wiIvrbcqMnD6jN9e9rVO2/J/KbEpNj6jnKxiLfRa3Ec/tjnIfjX0H9U=
X-Received: by 10.129.54.16 with SMTP id d16mr64798939ywa.41.1451956174978;
 Mon, 04 Jan 2016 17:09:34 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CALPTtNUfEJ3Kx9oSt0BdykkoOPsmm+qKc9N3NOWThQSgY23M6Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1142738c0a3e5805288be4cc
Date: Mon, 4 Jan 2016 17:09:15 -0800
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote Command Injection in Ruby Gem colorscore <=0.0.4
To: oss-security@lists.openwall.com

--001a1142738c0a3e5805288be4cc
Content-Type: text/plain; charset=UTF-8

Title: Remote Command Injection in Ruby Gem colorscore <=0.0.4

Description: Finds the dominant colors in an image and scores them against
a user-defined palette, using the CIE2000 Delta E formula.

Homepage: https://github.com/quadule/colorscore

Download: https://rubygems.org/gems/colorscore

Affected versions: All (<=0.0.4 currently)

Vulnerability:
The contents of the `image_path`, `colors`, and `depth` variables generated
from possibly user-supplied input are passed directly to the shell on line
4. If a user supplies a value that includes shell metacharacters such as
';', an attacker may be able to execute shell commands on the remote system
as the user id of the Ruby process.

To resolve this issue, the aforementioned variables (especially
`image_path`) must be sanitized for shell metacharacters.

1  module Colorscore
2    class Histogram
3      def initialize(image_path, colors=16, depth=8)
4        output = `convert #{image_path} -resize 400x400 -format %c -dither
None -quantize YIQ -colors #{colors} -depth #{depth} histogram:info:-`
5        @lines = output.lines.sort.reverse.map(&:strip).reject(&:empty?)
6      end

CVE: CVE-2015-7541

Credits: Dirk Zittersteyn (@DZittersteyn)

History:
* 2015-12-04 -- Vendor notified
* 2015-12-05 -- CVE requested
* 2016-01-04 -- Publicly disclosed

--001a1142738c0a3e5805288be4cc--
