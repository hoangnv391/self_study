from django.shortcuts import render
from django.http import Http404, HttpResponse, HttpResponseNotFound, HttpResponseRedirect
from django.urls import reverse
from django.template.loader import render_to_string

# Dictionary for path processing of monthly challenges

monthly_challenges = {
    "january": "This is January",
    "february": "This is February",
    "march": "This is March",
    "april": "This is April",
    "may": "This is May",
    "june": "This is June",
    "july": "This is July",
    "august": "This is august",
    "september": "This is september",
    "octorber": "This is October",
    "november": "This is November",
    "december": None
}

# Create your views here.

def index(request):

    response_data = ""
    redirect_path = ""
    months = list(monthly_challenges.keys())

    # for month in months:
    #     redirect_path = reverse("month-challenge", args=[month])
    #     response_data += f"""<li><a href="{redirect_path}">{month.capitalize()}</a></li>"""

    # response_data = "<ul>" + response_data + "</ul>"

    # return HttpResponse(response_data)
    return render(request, "challenges/index.html", {
        "months": months,
    })

def february(request):
    return HttpResponse("This is February!")


def monthly_challenge_number(request, month):
    months = list(monthly_challenges.keys())
    if month <= len(months):
        redirect_month = months[month - 1]
        redirect_path = reverse("month-challenge", args=[redirect_month]) #/challenges/january
        return HttpResponseRedirect(redirect_path)
    else:
        # return HttpResponse("<h1>This month is not supported!<h1>")
        raise Http404


def monthly_challenge(request, month):
    try:
        challenge_text = str(monthly_challenges[str(month)])
        # response_data = render_to_string("challenges/challenge.html")
        # return HttpResponse(response_data)
        return render(request, "challenges/challenge.html", {
            "text_type" : str(type(challenge_text)),
            "text":challenge_text,
            "month_name" : month,
        })
    except:
        raise Http404
        # return HttpResponseNotFound("This month is not supported123")
        # return HttpResponse(challenge_text)
