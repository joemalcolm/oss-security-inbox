Received: (qmail 9879 invoked by uid 550); 24 Jun 2024 22:40:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9846 invoked from network); 24 Jun 2024 22:40:06 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: oss-security@lists.openwall.com,  Ihor Radchenko <yantar92@posteo.net>
In-Reply-To: <87wmmehffa.fsf@oldenburg.str.redhat.com> (Florian Weimer's
	message of "Mon, 24 Jun 2024 11:13:13 +0200")
Organization: The Eyrie
References: <87wmmguk44.fsf@localhost> <87h6djh2dv.fsf@hope.eyrie.org>
	<87wmmehffa.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Mon, 24 Jun 2024 15:39:56 -0700
Message-ID: <87h6dikls3.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Arbitrary shell command evaluation in Org mode
 (GNU Emacs)

Florian Weimer <fweimer@redhat.com> writes:

> As far as I understand it, this only controls inline vs attachment
> rendering.  Content-Disposition: inline MIME parts are still displayed
> automatically, even if corresponding entries have been removed from
> mm-automatic-display.

> I looked at this and as far as I can tell, to disable rendering, you
> have to remove entries from mm-inline-media-tests.  I don't think this
> is possible through customization because the variable has bytecode
> objects in it.

> I think it should be possible to filter it down, with something like the
> code below.  Some comments on the choices: Patch rendering is just too
> useful to skip.  HTML rendering is necessary (and obviously quite risky)
> because Jira and other tools do not generate useful plaintext mail.

Thank you!  This was extremely helpful.

You may also want to keep message/rfc822 for better display of forwarded
mail.  I am making the assumption that the recursive expansion of the
included message will apply the same rules as the outer message.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
