FROM denoland/deno

WORKDIR /app

COPY main.ts /app
RUN deno cache main.ts

ARG PORT
EXPOSE ${PORT:-8000}

CMD ["run", "--allow-net", "--allow-env", "main.ts"]
