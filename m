X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["518" "Friday" "22" "May" "2020" "13:55:50" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20200522135550.36ba17a4@jabberwock.cb.piermont.com>" "19" "Re: [oss-security] Short notes on qmail security guarantee" "^Cc:" nil nil "5" "2020052217:55:50" "[oss-security] Short notes on qmail security guarantee" (number mark "        perry@piermo May 22   19/518   " thread-indent "\"Re: [oss-security] Short notes on qmail security guarantee\"\n") "<CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>" ("<CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>" "<20200522121750.GA24868@openwall.com>" "<CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Short notes on qmail security guarantee" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30602 invoked by uid 550); 22 May 2020 17:56:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30577 invoked from network); 22 May 2020 17:56:03 -0000
Message-ID: <20200522135550.36ba17a4@jabberwock.cb.piermont.com>
In-Reply-To: <CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>
References: <CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>
	<20200522121750.GA24868@openwall.com>
	<CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Fri, 22 May 2020 13:55:50 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Short notes on qmail security guarantee
To: Georgi Guninski <gguninski@gmail.com>

On Fri, 22 May 2020 18:45:00 +0300 Georgi Guninski
<gguninski@gmail.com> wrote:
> Hi,
> 
> Thanks for the info.
> 
> I am not professional admin, but does postfix require limits?

Postfix doesn't require them for remote exploitation security. The
master.cf and main.cf files, which ship with Postfix, do specify some
limits for performance tuning and to avoid denial of service.

> Do many widely used daemons need limits?

Not of the sort qmail apparently demands, no.

Perry
-- 
Perry E. Metzger		perry@piermont.com
