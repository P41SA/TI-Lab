<h1> The Lupa Lab</h1>
<p>First things first, thanks for having a look at my repo. I'm thrilled to share the Docker image that I use for Threat Intel (and more) with you. Hope you can find it useful and I'm open to new suggestions.</p>
<br>
<h2>Tools</h2>
<p>Inside this image you have the following tools already installed: <br>
- Dmitry <br>
- Recon-ng<br>
- John The Ripper<br>
- Dirb<br>
- Steghide<br>
- Proxychains<br>
- wfuzz<br>
- autopsy<br>
- Responder.py<br>
- Peepdf<br>
- Torify<br>
- Pdfid<br>
- Oletools</p>
<p>I'm working on adding new tools so we can analyze even more topics.<br>
I recommend you to build an isolated container using this image and run Cuckoo Sandbox</p>

<h2>How to build the Image</h2>
<p>1. Install Docker<br>
2. Download the Dockerfile.<br>
3. Run the following command:<br>
  &nbsp; &nbsp; &nbsp; &nbsp; <b>"sudo docker build -t the_lupa_lab .</b>"
</p>




