Este é o programa do Ben Lau que usa o servidor Torcs (gym_torcs)

https://yanpanlau.github.io/2016/10/11/Torcs-Keras.html


Estas são as instruções que passei em 10/08/2018.

1) Pra começar, acho fundamental usar ubuntu. Estou usando aquí o 18.04 lts, mas acho que o 16.04 lts, pra quem já tem instalado, pode servir também.
2) Acho importante instalar o anaconda. Inicialmente você não vai precisar dele, mas na hora h vai ser fundamental.
3) Agora, é seguir as instruções do site: veja que ele coloca como dependência o gym_torcs. Comece por ele, definitivamente. Você vai ver que o gym_torcs é todo instalado em cima do python3 (e por outro lado o ddpg do Ben Lau usa python 2.7, tensorflow 0.10 (dá pra usar o 1.1) e keras 1.1). O ubuntu em geral já usa o python3 bem atualizado (normalmente tem o 2.7 instalado também). Então, pode instalar o gym completo conforme as instruções do site do ugo nama (https://github.com/ugo-nama-kun/gym_torcs). Ao final da instalação do gym_torcs, dá pra testar ele. (Lembro que uma certa época instalei o torcs normal. Não sei se o gym_torcs quando instalado sobrepõe-se a ele, ou se eu desinstalei, ou se manualmente fiz a sobreposição, passa o tempo e eu esqueço, hehe. Talvez seja mais seguro desinstalar o torcs antes, caso ele esteja instalado.)
4) Quando chegar neste ponto, testando e rodando o gym_torcs, eu continuo as instruções mais detalhadamente. Básicamente criei um qambiente conda chamado ddpg, com python 2.7, ativei o ambiente, instalei o tensorflow 1.1 com o comando conda, o keras 1.1 com o comando pip, e fui capaz de rodar o código do Ben Lau. Fiz o clone com o git, em pastas separadas tanto do Ben Lau com do Ugo Nama, acho que vai ser fundamental, inclusive pra escrever o trabalho.

Para rodar serão utilizadas dois terminais.

1) No primeiro terminal não é preciso utilizar nenhum ambiente conda. É só para rodar o servidor Torcs.
É preciso ter certeza que o que está instalado em seu sistema é o gym_torcs, não o torcs normal.
Basta lançar o comando:
torcs
(Na verdade ainda tenho dúvidas sobre a necessidade de lançar o servidor nesta configuração que fiz, mas, mal não faz).


2) No segundo terminal vamos rodar a composição de pastas que fiz.
Em primeiro lugar, é preciso usar o ambiente conda que chamei de ddpg.

Eis a lista de pacotes que ele tem.
Cuidado que é um ambiente que usa python 2.7, então, precisa ser criado para a versão 2.7.
(qualquer dúvida é só buscar manuais de gerenciamento de ambientes conda na net).

Estou listando para garantir, mas, vou colocar um arquivo de criação em meu clone do gym_torcs do Hugo Nama

- Obtenha o arquivo ddpg.yml em https://github.com/duodecimo/gym_torcs
- Tendo o ambiente conda instalado, lance o comando:
  conda env create -f ddpg.yml
  Para criar o ambiente. (coloquei a listagem do conteúdo do ambiente no final deste documento para garantir).

- Realize a seguinte composição de pastas:
  -- gitDdpgKerasTorc
     -- DDPG-Keras-Torcs (nesta subpasta coloquei o clone de https://yanpanlau.github.io/2016/10/11/Torcs-Keras.html)
     -- gym_torcs (copiei esta pasta do clone de https://github.com/duodecimo/gym_torcs. Copiei porque
         altero o conteúdo, então, para não ficar alterando o original, fiz a cópia).

- Caso ainda não o fez, inicie o ambiente ddpg (comando ubuntu):
   source activate ddpg

- Rode o código run.sh logado na pasta DDPG-Keras-Torcs/.
   (O arquivo run.sh deverá ser colocado na pasta DDPG-Keras-Torcs/.
    Cuidado, estou colocando uma cópia na pasta gym_torcs/ do meu clone do Nama, mas
    é só para facilitar. Deve ser movido para DDPG-Keras-Torcs/  !!!
    listagem do arquivo run.sh:
    #!/bin/sh
    # código run.sh
    cp *.* ../gym_torcs
    cd ../gym_torcs
    python ddpg.py
   )
  (você pode usar o navegador de arquivos para tornar o arquivo run.sh executável)
  comando:
  ./run

- Se tudo ficou certo, na janela vão aparecer os resultados do programa do Ben Lau, e a janela gráfica do torcs deve
  aparecer).

- Após algum tempinho, aparecem as opções de corrida na janela do torcs. Escolha treinamento, nova corrida.

- Quando estiver rodando, a visão de câmera que ele mostra não é muito conveniente, sugiro acionar a tecla F3
   duas vezes para ter uma visão melhor.

- Se chegou até aquí, o aprendizado rl começa ... Aí, é preciso estudar o código e ver como prosseguir!





===================================================================================================================
# packages in environment at /home/duo/anaconda3/envs/ddpg:
#
# Name                    Version                   Build  Channel
blas                      1.0                         mkl  
ca-certificates           2018.8.24            ha4d7672_0    conda-forge
certifi                   2018.8.24             py27_1001    conda-forge
chardet                   3.0.4                     <pip>
freetype                  2.9.1                h6debe1e_4    conda-forge
funcsigs                  1.0.2                      py_2    conda-forge
future                    0.16.0                    <pip>
gym                       0.10.8                    <pip>
h5py                      2.8.0            py27h7eb728f_3    conda-forge
hdf5                      1.10.2               hc401514_2    conda-forge
idna                      2.7                       <pip>
intel-openmp              2019.0                      118  
jpeg                      9c                   h470a237_1    conda-forge
keras                     1.1.1                    py27_0  
libffi                    3.2.1                hfc679d8_5    conda-forge
libgcc-ng                 7.2.0                hdf63c60_3    conda-forge
libgfortran               3.0.0                         1    conda-forge
libgfortran-ng            7.2.0                hdf63c60_3    conda-forge
libgpuarray               0.7.6                h470a237_3    conda-forge
libpng                    1.6.35               ha92aebf_2    conda-forge
libprotobuf               3.6.1                hd28b015_0    conda-forge
libstdcxx-ng              7.2.0                hdf63c60_3    conda-forge
libtiff                   4.0.9                he6b73bb_2    conda-forge
linecache2                1.0.0                      py_1    conda-forge
mako                      1.0.7                      py_1    conda-forge
markupsafe                1.0              py27h470a237_1    conda-forge
mkl                       2019.0                      118  
mkl_fft                   1.0.6                    py27_0    conda-forge
mkl_random                1.0.1                    py27_0    conda-forge
mock                      2.0.0                 py27_1000    conda-forge
ncurses                   6.1                  hfc679d8_1    conda-forge
numpy                     1.15.0           py27h1b885b7_0  
numpy-base                1.15.0           py27h3dfced4_0  
olefile                   0.46                       py_0    conda-forge
openssl                   1.0.2p               h470a237_0    conda-forge
pbr                       4.2.0                      py_0    conda-forge
pillow                    5.3.0            py27hc736899_0    conda-forge
pip                       18.1                  py27_1000    conda-forge
protobuf                  3.0.0b2                  py27_0    conda-forge
pyglet                    1.3.2                     <pip>
pygpu                     0.7.6            py27h7eb728f_0    conda-forge
python                    2.7.15               h33da82c_3    conda-forge
pyyaml                    3.13             py27h470a237_1    conda-forge
readline                  7.0                  haf1bffa_1    conda-forge
requests                  2.19.1                    <pip>
scipy                     1.1.0            py27hc49cb51_0  
setuptools                40.4.3                   py27_0    conda-forge
six                       1.11.0                py27_1001    conda-forge
sqlite                    3.25.2               hb1c47c0_0    conda-forge
tensorflow                0.10.0                   py27_0    conda-forge
theano                    1.0.3                    py27_0    conda-forge
tk                        8.6.8                ha92aebf_0    conda-forge
traceback2                1.4.0                    py27_0    conda-forge
unittest2                 1.1.0                      py_0    conda-forge
urllib3                   1.23                      <pip>
werkzeug                  0.14.1                     py_0    conda-forge
wheel                     0.32.1                   py27_0    conda-forge
xz                        5.2.4                h470a237_1    conda-forge
yaml                      0.1.7                h470a237_1    conda-forge
zlib                      1.2.11               h470a237_3    conda-forge
===================================================================================================================

Observe que a maioria veio do canal conda-forge, portanto é só instalar com:
conda install <nome>
Alguns são pip, então, devem ser instalados com:
pip install <nome>


