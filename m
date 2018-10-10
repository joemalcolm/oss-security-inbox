X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3540" "Wednesday" "10" "October" "2018" "15:36:52" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>" "63" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018101014:36:52" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "U       eddie@ehuk.n Oct 10   63/3540  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181010145330.63e183d8@computer>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" "<20181010145330.63e183d8@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10100 invoked by uid 550); 10 Oct 2018 15:30:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10237 invoked from network); 10 Oct 2018 14:37:05 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk DE62CBFD68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1539182212; bh=Ywqn6+vN0+qAxehJG4kzEvM8TINjq/2pE+5H8mGG6Hc=;
	h=Subject:To:References:From:Reply-To:Date:In-Reply-To:From;
	b=UHEt5+eIm/LeT7hyzaoPj1Ddef6KkJIYPLOc/kJStiB1THVlmv0BaMFU3gsyVnz5X
	 cC5swgr212LQ3lGyi0xDzF0Mg1UNJ3wf1ARs+voy4x41SVnGvZiGfSaOewhvbSDngf
	 PZYr0A39iWLhzPHoqMM1s/+zg0BsyAtGfALuhCTo=
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
 <20181010145330.63e183d8@computer>
Message-ID: <5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181010145330.63e183d8@computer>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Date: Wed, 10 Oct 2018 15:36:52 +0100
From: Eddie Chapman <eddie@ehuk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com, =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>

On 10/10/18 13:53, Hanno Böck wrote:
> On Wed, 10 Oct 2018 10:10:58 +0100
> Eddie Chapman <eddie@ehuk.net> wrote:
> 
>> While the vulnerability in ghostscript itself is clear in this
>> thread, does anyone have any more info on the above aspect of this?
>> i.e is the above scenario (inadvertently running postscript, perhaps
>> contained in an image, through ghostscript by just browsing a
>> malicious site) limited to just nautilus in gnome environments? Do
>> other browsers/environments handle this better or do they do similar?
>> It seems that, strictly speaking, the "critical" nature of this
>> vulnerability hinges on the behaviour of the browser/desktop
>> environment. Otherwise the scope is limited to an individual manually
>> downloading a postscript file and opening it outside of the browser.
> 
> evince installs a thumbnail entry to
> /usr/share/thumbnailers
> 
> This is a generic location where applications can install files (I
> believe they follow the .desktop specification, which is an ini-based
> format). This is thus not nautilus-specific, but every filemanager that
> uses this format will be affected. A quick googling tells me e.g.
> pcmanfm is also affected. I'm not sure if dolphin uses them as well.
> 
> Nautilus is trying to solve this by sandboxing the thumbnailers.
> However this depends on bubblewrap and is currently fail-open, i.e. if
> bubblewrap is not available it will not disable the thumbnailing, it
> will just not sandbox it. In practice this means it's often not
> sandboxed. I doubt this will change any time soon.
> 
> Very similar problems show up with desktop search tools.
> 
> I think this whole concept is questionable and should be reviewed. I
> think it's not desirable to have thumbnailers for all kinds of formats,
> instead a more reasonable approach would be to limit thumbnailing to a
> few widely used formats that have well-reviewed libraries (e.g. I don't
> think that libjpeg or libpng will have any vulnerabilities left that are
> even remotely as severe as the things tavis found in ghostscript).

Ah OK, I got confused (having not used gnome or nautilus for a long 
time) of what exactly Nautilus' role is here. Because Tavis mentioned 
web browsing and nautilus together in my mind I was thinking nautilus 
was the web browser here forgot it's a file manager :-)

But I'm still unclear how "just browsing a website is enough to trigger 
the vulnerability in some common configurations." Are we talking about 
the user looking in their web browser cache directory on the filesystem 
using Nautilus, and hence running malicious code embedded in a cached 
file via the evince thumbnailer on opening that directory? Or maybe 
Nautilus/Gnome automatically runs the thumbnailer on every new file 
created in the user's home directory (via inotify?), including whatever 
the browser saves in the background (hopefully not)? Or is it just a 
case of the user opening a downloaded file with evince and becoming a 
victim that way? Though that is not exactly automatic, most browsers 
show a prompt asking what to do with a downloaded file.

So, still slightly confused, how one can become a victim here just 
browsing a website. It's probably obvious to everyone but I'm not 
getting it having always run a quite minimal desktop for years 
(currently a mixture of Awesome window manager + some Mate elements, 
caja file manager) .... Or maybe no-one wants to spell it out so as not 
to give the bad guys any free tips. So feel free to ignore me if it's 
either of those :-)
