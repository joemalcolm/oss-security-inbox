X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6385" "Saturday" "25" "June" "2016" "12:18:42" "+0800" "redrain root" "rootredrain@gmail.com" "<CAPGxrc-M3V_ok8DFmu3fOogpX-Sr-eoy9zCMYqNGgCp73hu05Q@mail.gmail.com>" "268" "[oss-security] Ruby:HTTP Header injection in 'net/http'" nil nil nil "6" "2016062504:18:42" "[oss-security] Ruby:HTTP Header injection in 'net/http'" (number mark "U       rootredrain@ Jun 25  268/6385  " thread-indent "\"[oss-security] Ruby:HTTP Header injection in 'net/http'\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22491 invoked by uid 550); 25 Jun 2016 04:24:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20198 invoked from network); 25 Jun 2016 04:18:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=LwRKXQav5zuy1dmh9oas0u1nu2e1AKVVshUlwv29qbc=;
        b=s8zqIkWH5AVpttOWZc7Z3JPZVnnTiJkH4lF8Os/vFiQ7HjtDLag0fsCCSEKDDC6GEz
         4dB/NnRt5+zoLXDrdIqoAWZXKABIAA898RB+lxkVDaxjSh1lv2n1MUNQtos37ZwnetIK
         VdT2oZW6lKCwIFM3vJCAp1hNUQrYyTWcJPDYhbc1LgZ0yKIEv4qj0S96YQYUyWwlFEZN
         mN4YoKDg9+Q9x6ri20PkhVY2AL0jSFhmRs+lBbuAhd7k3WPEJfNSXFceaVubz77xfxph
         4G/tn4+/oyYegv98/N9IxeCMYhULsT98+PrDZvSZQrkazwwJsRSd/MrMVKXOwrDuz6rv
         5S+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=LwRKXQav5zuy1dmh9oas0u1nu2e1AKVVshUlwv29qbc=;
        b=ggcOLs2PeqKZ3SvCo6XR7ytwNFtXMHh/mDoVMmQKZjPyle/ssUD7ZGAJv0PKE4x3Yb
         FwVxX7rgtd3qHKa1AYcFBgK5YWVudEOAkjiIV0tkNjomv/4dIpTappsBCyLkKavgJsPp
         mJtJhQKZDMuXQWE1rC35gAvCmfodoxShV4AAzvUXKK1F+nZT27pe+/eokp0/wanhvSUm
         kk8s4mG6qUIkMfk34tjvnpu10GBtmTAhscXlK0Wk3V63ht56/94UiEG/RCUTKRXdpp4q
         6rqxF69pwJP8kOvtynWKnoC9O8EVVfi+uRZkq/BgQs1011YqulfwJRl/E+bmCXVm603w
         fxhA==
X-Gm-Message-State: ALyK8tIiP7yP2m1ZIoeYnwbuDzDhiZbdyT7gvxh75ZSTSn+QhDWQ3H21uuRTbk072lwLTTjw5OEHK7Jfi5lpUw==
X-Received: by 10.129.159.134 with SMTP id w128mr5235433ywg.193.1466828322614;
 Fri, 24 Jun 2016 21:18:42 -0700 (PDT)
MIME-Version: 1.0
From: redrain root <rootredrain@gmail.com>
Date: Sat, 25 Jun 2016 12:18:42 +0800
Message-ID: <CAPGxrc-M3V_ok8DFmu3fOogpX-Sr-eoy9zCMYqNGgCp73hu05Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Ruby:HTTP Header injection in 'net/http'

TIMELINE
rootredrain submitted a report to Ruby.

show raw
Jun 22nd

Hi,

I would like to report a HTTP Header injection vulnerability in
'net/http' that allows attackers to inject arbitrary headers in
request even create a new evil request.

PoC

require 'net/http'
http =3D Net::HTTP.new('192.168.30.214','80')
res =3D http.get("/r.php HTTP/1.1\r\nx-injection: memeda")

Example

Server Code:

#!/usr/bin/env ruby
require 'sinatra'
require 'uri'
require 'net/http'

get '/' do
  'hello world'
end

post '/' do
  ip =3D params[:ip]
  port =3D params[:port]
  path =3D params[:path]

  # do what you want
  http =3D Net::HTTP.new ip, port.to_i
  res =3D http.get path

  res.body

end

post data:

ip=3D192.168.30.214&port=3D80&path=3D/r.php%20HTTP/1.1%0d%0ax-injection: me=
meda

print_r all HTTP Headers=EF=BC=9A

Create an evil request

post data:

server log:

Suggestion:

Should validate URI legality before send request

btw=EF=BC=8C

Cloud I have a CVEID with this vulnerability? reported by
@redrain(rootredrain@gmail.com) and@ztz(ztz5651483@gmail.com)

4 attachments:
F100918: 123123.png
F100919: 222333.png
F100920: 4444.png
F100921: 5555.png

rootredrain posted a comment.
Jun 22nd (2 days ago)

The problem is this line in lib/net/http/generic_request.rb:324

  def write_header(sock, ver, path)
    buf =3D "#{@method} #{path} HTTP/#{ver}\r\n"
    each_capitalized do |k,v|
      buf << "#{k}: #{v}\r\n"
    end
    buf << "\r\n"
    sock.write buf
  end

"#{@method} #{path} HTTP/#{ver}\r\n" should be checked here to avoid
malicious input

shugo posted a comment.
Jun 24th (8 hrs ago)

Thanks for your report.

We don't consider this a vulnerability because Net::HTTP#get is not
designed to accept malicious input.
Applications have responsibility to verify input syntactically and
semantically (accepting all RFC2616-compliant input would not be a
good idea).

So we would like to handle this as a normal issue.

rootredrain posted a comment.
Jun 24th (2 hrs ago)

Hi shugo,

Thanks for the reply. Please don't leave this problem to developers,
they have uneven level at developing.

For example, assume we have a demo website, the only thing do is
generate a new HTTP request:

#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  'hello world'
end

post '/' do
  ip =3D params[:ip]
  port =3D params[:port]
  path =3D params[:path]

  # send the request to another site
  http =3D Net::HTTP.new ip, port.to_i
  res =3D http.get path

  res.body
end

It's a common demand, right ?

But web developer may not realized that sinatra will auto decode url.
Attacker can encode \r\n to %0a%0d, send to the sinatra, sinatra will
decode url to \r\n and pass to thepath, finally cause a HTTP Header
Injection or CRLF Injection.

Please assume all input is malicious. Here is a similar vulnerability
in python: CVE-2016-5699

Here is what another HTTP lib Faraday do may change your mind.

lib/faraday/connection.rb:308

def url_prefix=3D(url, encoder =3D nil)
  uri =3D url_prefix =3D Utils.URI(url)
  self.path_prefix =3D uri.path
  # ... ... ...
  uri
end

uri =3D url_prefix =3D Utils.URI(url) try to convert url to URI, It will
raise an error whenurl is invalid.

lib/faraday/connection.rb:399

def build_exclusive_url(url =3D nil, params =3D nil, params_encoder =3D nil)
  url =3D nil if url.respond_to?(:empty?) and url.empty?
  base =3D url_prefix
  # ... ... ...
  uri =3D url ? base + url : base
  # ... ... ...
end

uri =3D url ? base + url : base will trigger another examination convert_to=
_uri:

def convert_to_uri(uri)
  if uri.is_a?(URI::Generic)
    uri
  elsif uri =3D String.try_convert(uri)
    parse(uri)
  else
    raise ArgumentError,
          "bad argument (expected URI object or URI string)"
  end
end

If url is invalid, it will raise an error.

Please let me know if you need more info.

tenderlove posted a comment.
Jun 24th (2 hrs ago)

It's a common demand, right ?

I'm not sure about that.

I think this is a bug we should probably address, but I don't think we
should consider this a vulnerability. Fetching arbitrary paths from
user input seems pretty dubious.

rootredrain posted a comment.
Jun 24th (about 1 hr ago)

Hi tenderlove,

Here is my point :
All input can not be trusted.

We should validate url in Net::HTTP

tenderlove posted a comment.
Jun 24th (about 1 hr ago)

All input can not be trusted.

Yes, people should be whitelisting paths passed in. An open proxy is
already a vulnerability, regardless of header injection.

As I said, we should treat this as a bug. But since an open proxy is
already a security problem (that we cannot fix), then I don't think
this bug should be treated as a security issue.

shugo posted a comment.
Jun 24th (34 mins ago)

But web developer may not realized that sinatra will auto decode url.
Attacker can encode \r\n to %0a%0d, send to the sinatra, sinatra will
decode url to \r\n and pass to the path, finally cause a HTTP Header
Injection or CRLF Injection.

In that case, it seems to be a bug of that application, not Net::HTTP#get.

I'm not against adding argument verification to Net::HTTP#get, though.

rootredrain posted a comment.
Jun 24th (29 mins ago)

But since an open proxy is already a security problem

Yes, an open proxy is already a vulnerability and you can't fix that,
but attack scenarios is not only include an open proxy, but also
include many other parts.

A site like google image, user can paste image url on it, then site
will request the resource. It's possible to suffer this attack.

Some video sites allow user reference outside resource. It's possible
to suffer this attack.

So you can not treat it occur in an unusual scenarios. I still
consider it was a security issue.

rootredrain posted a comment.
Jun 24th (27 mins ago)

If you believe this is not a issue, please allow the public disclosure.

tenderlove closed the report and changed the status to Informative.
Jun 24th (23 mins ago)

I've closed as informative, and I'll allow public disclosure.

tenderlove requested to disclose this report publicly.
Jun 24th (20 mins ago)

rootredrain has requested mediation from HackerOne Support.
Jun 24th (15 mins ago)

The HTTP scheme handler accepts percent-encoded values as part of the URL.

The generic_request.rb allows unsafe characters, it dosen't have any
safe filtration, attackers can cause actual security threat. so we
consider it is a vulnerability
