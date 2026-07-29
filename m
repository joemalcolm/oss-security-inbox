X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/9
Message-ID: <04e0c4cf-8283-4a00-8ff4-9bcb54834b4a@oracle.com>
Date: Wed, 29 Jul 2026 15:46:41 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Rails CVE-2026-66066: Possible arbitrary file read and remote code execution in Active Storage variant processing
Content-Type: text/plain; charset=utf-8

https://github.com/rails/rails/security/advisories/GHSA-xr9x-r78c-5hrm
advises:
> Possible arbitrary file read and remote code execution in Active Storage
>  variant processing
> 
> Critical
> 
> byroot published GHSA-xr9x-r78c-5hrm 29 July 2026
> 
> Package:            activestorage (RubyGems)
> Affected versions:  < 7.2.3.2
>                     >= 8.0, < 8.0.5.1
>                     >= 8.1, < 8.1.3.1
> Patched versions:   7.2.3.2
>                     8.0.5.1
>                     8.1.3.1
> 
> Impact
> ------
> 
> In its default configuration, a Rails application that displays image variants
> may allow an unauthenticated attacker to read arbitrary files from the server,
> including the process environment.  That environment typically holds
> secret_key_base and often credentials for external systems, which may in turn
> allow escalation to remote code execution or lateral movement to those
> systems.
> 
> Details
> -------
> 
> libvips reads and writes file formats through "loaders" and "savers" (or more
> generally "operations"), many of which are backed by third-party libraries.
> It marks some of these operations as "unfuzzed", meaning they are unsafe for
> untrusted content, and several handle formats unrelated to web images. Active
> Storage did not disable the unfuzzed operations, so an attacker who can upload
> a crafted file and cause a variant to be generated from it may be able to
> invoke one.
> 
> We are aware of a mechanism by which an attacker, by uploading a crafted file,
> is able to cause disclosure of the contents of arbitrary files accessible on
> the filesystem of the targeted application. One specific attack chain has been
> reported to us (see "Disclosure" below), but we do not assume it is the only
> one that exists.
> 
> Affected applications
> ---------------------
> 
> An application is affected if it meets all of these requirements:
> 
>  * Uses libvips for Active Storage image processing. This is
>    `config.active_storage.variant_processor = :vips`,
>    which `load_defaults 7.0` set and no later default has changed.
>  * Allows image uploads from untrusted users.
> 
> Generating variants is not a separate requirement.
> 
> Mitigation
> ----------
>  * Upgrade to a fixed version of `activestorage`.
>  * The minimum version of libvips must be upgraded to `>= 8.13`.
>  * Change `secret_key_base` and change any secrets accessible in the
>    application environment (see "Expire and change secrets" below)
> 
> Earlier versions of libvips (`< 8.13`) cannot disable unfuzzed operations at
> all, and Active Storage will raise an exception during boot in such an
> unsecurable environment.
> 
> Expire and change secrets
> -------------------------
> 
> Upgrading closes the vulnerability but does not undo an exfiltrated secret
> if that already occurred. An affected application should treat every secret
> readable by the application process as potentially exposed and change it,
> including:
> 
>  * `secret_key_base`
>  * The master key, whether stored in `config/master.key` or supplied as
>    `RAILS_MASTER_KEY`, along with everything in `config/credentials.yml.enc`
>    that it decrypts
>  * Credentials for the Active Storage service, such as S3, GCS, or Azure keys
>    Database credentials
>  * Tokens and keys for any third-party service the application calls
> 
> 
> Changing `secret_key_base` expires active sessions and requires users to log
> in again. Encrypted cookies, signed cookies, signed global IDs, and Active
> Storage URLs are also affected.
> 
> Rotation should only be used as an intermediate step if necessary. Do not
> retain an exposed secret as a fallback.
> 
> Workarounds
> -----------
> 
> If libvips < 8.13 is being used, there are no workarounds available other
> than removing the dependency on libvips from the application. Some
> applications may have `ruby-vips` declared as a dependency only for image
> analysis, and those applications may be able to simply remove `ruby-vips` from
> the Gemfile to remove libvips from the application. Applications that do not
> use Active Storage can remove `ruby-vips` from the Gemfile to avoid the
> boot-time checks.
> 
> If libvips >= 8.13 is present on the system, applications can disable the
> unfuzzed operations without upgrading Rails by setting the
> `VIPS_BLOCK_UNTRUSTED` environment variable, which libvips reads while
> initializing.
> 
> Applications also running ruby-vips >= 2.2.1 or later can instead call
> `Vips.block_untrusted(true)` from an initializer.
> 
> Releases
> --------
> 
> The fixed releases are available at the normal locations.
> 
> Versions affected
> -----------------
> 
>     activestorage < 7.2.3.2
>     activestorage >= 8.0, < 8.0.5.1
>     activestorage >= 8.1, < 8.1.3.1
> 
> Disclosure
> ----------
> 
> Technical details of the attack chain are intentionally omitted from this
> advisory. They would add nothing to an administrator's decision to upgrade,
> while making it substantially easier to attack applications that have not yet
> done so.
> 
> Details will be disclosed no later than 2026-08-28, via the Rails Security
> Announcements forum:
> https://discuss.rubyonrails.org/c/security-announcements/9
> 
> Credit
> ------
> 
> This issue was responsibly reported by 0xacb, s3np41k1r1t0 and castilho
> from Ethiack, and RyotaK from GMO Flatt Security Inc.
> 
> References
> ----------
> 
>  * libvips 8.13 release notes, blocking of unfuzzed loaders
>    https://www.libvips.org/2022/05/28/What's-new-in-8.13.html#blocking-of-unfuzzed-loaders
>  * W.A. Arbaugh, W.L. Fithen, and J. McHugh, "Windows of Vulnerability:
>     A Case Study Analysis", IEEE Computer 33(12), December 2000
>    https://doi.org/10.1109/2.889093
>  * https://ethiack.com/info-hub/research/kindarails2shell-rails-rce-cve
>  * https://blog.flatt.tech/entry/kindarails2shell_rails
> 
> Severity: Critical: 9.5 / 10
> CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H
> CVE ID: CVE-2026-66066
> Weaknesses: Weakness CWE-1188

