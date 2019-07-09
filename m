X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["464" "Tuesday" "9" "July" "2019" "11:30:36" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "13" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019070915:30:36" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        perry@piermo Jul  9   13/464   " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9754 invoked by uid 550); 9 Jul 2019 15:30:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9733 invoked from network); 9 Jul 2019 15:30:48 -0000
Message-ID: <20190709113036.0f12d057@jabberwock.cb.piermont.com>
In-Reply-To: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Tue, 9 Jul 2019 11:30:36 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: Malte Kraus <malte.kraus@suse.com>

On Tue, 9 Jul 2019 13:58:37 +0000 Malte Kraus <malte.kraus@suse.com>
wrote:
> With Wayland, it's no longer supported to run graphical
> applications as root.

Can you explain (or point to) a description of why this is a problem?
(It seems like preventing people from editing administrative files as
root and requiring that they use a dbus based file i/o system is
likely to be a source of bugs for years to come...)

Perry
-- 
Perry E. Metzger		perry@piermont.com
