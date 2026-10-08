X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/8
Message-ID: <CAME0EzZ63o0fwq5wHigc5jvXadHS79hnBRrB71_Dqt-24vMWsw@mail.gmail.com>
Date: Thu, 8 Oct 2026 00:51:41 -0700
From: TheSecguy <thesecguy45@...il.com>
To: oss-security@...ts.openwall.com
Subject: OpenJPEG: heap-buffer-overflow write fixed on master since Feb 2026, still present in every release (2.5.3, 2.5.4)
Content-Type: text/plain; charset=utf-8

Hello,

Short version: OpenJPEG has had a heap-buffer-overflow WRITE fixed on
master since
2026-02-10 that has never appeared in a release. Every released version
containing the
affected code -- v2.5.3 and v2.5.4 -- is still vulnerable, and
distributions are
shipping it. There is no CVE and no advisory mapped to distro packages, so
it is
unlikely to be on packagers' radars.


THE DEFECT

src/lib/openjp2/j2k.c, in opj_j2k_read_sod():

OPJ_UINT32 l_current_tile_part =
l_cstr_index->tile_index[p_j2k->m_current_tile_number].current_tpsno;
l_cstr_index->tile_index[...].tp_index[l_current_tile_part].end_header =
l_current_pos;
l_cstr_index->tile_index[...].tp_index[l_current_tile_part].end_pos =
l_current_pos + p_j2k->m_specific_param.m_decoder.m_sot_length + 2;

tp_index is neither null-checked nor bounds-checked, and
l_current_tile_part comes
directly from the one-byte TPsot field of the SOT marker.

The correct guard already exists a few lines away in the same file, in
opj_j2k_add_tlmarker() (j2k.c:8459), writing the same array at the same
index behind

if (tp_index && l_current_tile_part < nb_tps)

One writer checked, its sibling not.

Reached by giving the codestream a valid TLM marker -- so tp_index is
allocated once by
opj_j2k_build_tp_index_from_tlm(), sized to the TLM entry count, and
opj_j2k_read_sot()
then skips all resizing -- while setting TNsot = 0 in every SOT. That keeps
the TLM
"valid" and lets TPsot walk past the allocation. TPsot is one byte, so the
ceiling is
255 * 24 = 6120 bytes past a 24-byte allocation, with the written value
derived from
the attacker-controlled 32-bit Psot field.


STATUS

introduced : 954c6e3c (2024-06-25, a TLM optimisation)
-- note 2.5.2 and earlier are NOT affected
tracked : OSV-2025-219, published 2025-03-18, from OSS-Fuzz issue 403673832
fixed : 91d08b11 (2026-02-10, PR #1621), merged as d33cbecc
released : nowhere. Newest tag is v2.5.4 (2025-09-20);
`git compare v2.5.4...91d08b11` reports ahead 6, behind 0.


DOWNSTREAM REACH

A /JPXDecode image XObject in a PDF reaches this through Poppler (pdftoppm,
pdfimages,
pdftocairo), MuPDF (mutool draw), Ghostscript and ImageMagick -- all
reproduced here
under ASan from a single 6.5 KB PDF.

Pillow's wheels bundle their own libopenjp2 and were affected independently
of the host
package. They have now applied 91d08b11 as a wheel-build patch
(python-pillow/Pillow
PR #10156, merged) because they did not expect an OpenJPEG release in time.


SUGGESTED ACTION

Backport 91d08b11. It is a three-line guard, identical to one already
present a few
lines away in the same file.


I contacted the OpenJPEG maintainer privately on 2026-10-06 asking for a
release and
have had no reply. I am posting here rather than to distros@ precisely
because the
issue is already public -- OSV has tracked it since March 2025 and the fix
is public on
master.

Regards,
Owais

