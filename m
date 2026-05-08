Received: (qmail 3365 invoked by uid 550); 8 May 2026 16:00:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9535 invoked from network); 8 May 2026 06:58:40 -0000
Date: Fri, 8 May 2026 08:58:29 +0200
From: "Bernhard R. Link" <brl+oss@mail.brlink.eu>
To: oss-security@lists.openwall.com
Message-ID: <af2JlX2oIJnlmCJa@client.brlink.eu>
References: <afzgS2SCWNcZU3vU@v4bel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afzgS2SCWNcZU3vU@v4bel>
Subject: Re: [oss-security] Dirty Frag: Universal Linux LPE

* Hyunwoo Kim <imv4bel@gmail.com> [260507 21:02]:
> no patches exist for any distribution. Use the following command to remove the
> modules in which the vulnerabilities occur:
G ```
> sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxrpc 2>/dev/null; true"
> ```

It really starts to feel like there should be a design CVE for not
having an only-appendable-by-root allowlist of modules to autoload...

sigh...
