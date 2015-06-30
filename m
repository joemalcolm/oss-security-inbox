X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["932" "Tuesday" "30" "June" "2015" "15:52:45" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55929F2D.3020802@redhat.com>" "20" "Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "6" "2015063013:52:45" "[oss-security] Google Chrome Address Spoofing (Request For Comment)" (number mark "        fweimer@redh Jun 30   20/932   " thread-indent "\"Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)\"\n") "<55929D7F.3050805@gmail.com>" ("<55923253.8020902@deusen.co.uk>" "<55929D7F.3050805@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5566 invoked by uid 550); 30 Jun 2015 13:53:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5518 invoked from network); 30 Jun 2015 13:53:01 -0000
Message-ID: <55929F2D.3020802@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <55923253.8020902@deusen.co.uk> <55929D7F.3050805@gmail.com>
In-Reply-To: <55929D7F.3050805@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 30 Jun 2015 15:52:45 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)
To: oss-security@lists.openwall.com

On 06/30/2015 03:45 PM, Daniel Micay wrote:
> It does display a window with the oracle.com address, but I don't
> understand why you've got an ever increasing number of setTimeout events
> built in here. It's also unclear what you mean about click-to-verify. Is
> this bypassing a warning prompt by breaking it with a flood of requests?

I have not tried this, but here's some context:

Most browsers have issues where they do not update the URL bar when
content from a different is shown (i.e., the update happens to late), or
they show the new URL while still displaying old content (update too
late).  I've seen such discrepancies with Firefox, but I don't know if
it's still present in current versions.

If such bugs are present, freezing browsers while they are showing
inconsistent content (hence the DoS attempt) could lead the user to
attribute content to the incorrect site.

-- 
Florian Weimer / Red Hat Product Security
