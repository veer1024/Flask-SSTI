from flask import Flask,render_template,request,render_template_string
app = Flask(__name__)
app.first_flag = "N&S{Th1s_1s_y0ur_F1rst_Fl4g}"

@app.route("/")
def hello():
    #bio = request.args.get("bio")
	return render_template('index.html')
@app.route("/whoareyou")
def whoareyou():
    bio = request.args.get("bio") or None
    template = '''
    <p>Hello </p>
    Your input:<br>
    {}
    '''.format(bio)
    return render_template_string(template)

if "__name__" == "__main__":
     app.run()
